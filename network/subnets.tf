resource "aws_subnet" "public_subnet" {

  count                   = 2
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.subnet_public_cidr[count.index]
  availability_zone       = var.az[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}


#-------PRIVATE-SUBNET--------


resource "aws_subnet" "private_subnet" {
  count             = 2
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_private_cidr[count.index]
  availability_zone = var.az[count.index]

  tags = {
    Name = "private-subnet"
  }
}




