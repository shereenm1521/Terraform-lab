resource "aws_instance" "application" {
  ami           = var.ami-id
  instance_type = var.instance_type
  subnet_id     = module.mynetwork.pub-private[0].id

  vpc_security_group_ids = [aws_security_group.private_ssh_sg.id]
  key_name               = aws_key_pair.tf-key-pair.id
}