resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr

  tags = {
    name = "myvpc-1"
  }
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "myigw"
  }
}




