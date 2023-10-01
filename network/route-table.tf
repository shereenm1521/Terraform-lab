resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.myvpc.id

  # since this is exactly the route AWS will create, the route will be adopted
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.myvpc.id

  # since this is exactly the route AWS will create, the route will be adopted
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.my-nat.id
  }
}
