resource "aws_security_group" "private_ssh_sg" {
  name        = "private-ssh-sg"
  description = "Allow SSH and port 3000 from VPC CIDR"
  vpc_id      = module.mynetwork.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.mynetwork.vpc_cidr]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [module.mynetwork.vpc_cidr]
  }
}
