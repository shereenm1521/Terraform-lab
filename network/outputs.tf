output pub-subnet {
    value = aws_subnet.public_subnet
}

output pub-private {
    value = aws_subnet.private_subnet
}

output vpc_id {
    value = aws_vpc.myvpc.id
}

output "vpc_cidr" {
    value = aws_vpc.myvpc.cidr_block
}