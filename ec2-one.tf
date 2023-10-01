resource "aws_instance" "bastion" {
  ami           = var.ami-id
  instance_type = var.instance_type
  subnet_id     = module.mynetwork.pub-subnet[0].id

  vpc_security_group_ids = [aws_security_group.public_ssh_sg.id]
  key_name               = aws_key_pair.tf-key-pair.id


  provisioner "local-exec" {
    command = "echo ${self.public_ip} >inventory"

  }


  user_data = <<-EOF
  #!/bin/bash
   echo '${tls_private_key.rsa_key.private_key_pem}'  > /home/ec2-user/private-key.pem
   chmod 400 /home/ec2-user/private-key.pem
  EOF


  tags = {

    name = "public-instance"
  }
}


