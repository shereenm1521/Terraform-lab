resource "aws_nat_gateway" "my-nat" {
  allocation_id = aws_eip.aws_eip.id
  subnet_id     = aws_subnet.public_subnet[0].id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
}

resource "aws_eip" "aws_eip" {

  #domain   = "vpc"

  tags = {
    name = "nat-eip"
  }
}

