resource "aws_route_table" "public-rtb" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.pub-routetable-name
  }
}

resource "aws_route_table" "private-rtb" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.pvt-routetable-name
  }
}

resource "aws_route" "routetable-igw-route" {
  route_table_id         = aws_route_table.public-rtb.id
  destination_cidr_block = var.dist-cidr-blk
  gateway_id             = aws_internet_gateway.public-subnet-igw.id
}

resource "aws_route" "routetable-natgw-route" {
  route_table_id         = aws_route_table.private-rtb.id
  destination_cidr_block = var.dist-cidr-blk
  nat_gateway_id         = aws_nat_gateway.my-nat.id

}