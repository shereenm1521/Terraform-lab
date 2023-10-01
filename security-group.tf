resource "aws_security_group" "public_ssh_sg" {
  name        = "public-ssh-sg"
  description = "Allow SSH from 0.0.0.0/0"
  vpc_id      = module.mynetwork.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {

    name = "my-security-group"
  }
}


