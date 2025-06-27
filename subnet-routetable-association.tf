resource "aws_route_table_association" "pub-subnet1-assoc" {
  route_table_id = aws_route_table.public-rtb.id
  subnet_id      = aws_subnet.public1.id
}

resource "aws_route_table_association" "pub-subnet2-assoc" {
  route_table_id = aws_route_table.public-rtb.id
  subnet_id      = aws_subnet.public2.id
}
resource "aws_route_table_association" "pub-subnet3-aasoc" {
  route_table_id = aws_route_table.public-rtb.id
  subnet_id      = aws_subnet.public3.id

}

resource "aws_route_table_association" "pvt-subnet1-assoc" {
  route_table_id = aws_route_table.private-rtb.id
  subnet_id      = aws_subnet.private1.id
}

resource "aws_route_table_association" "pvt-subnet2-assoc" {
  route_table_id = aws_route_table.private-rtb.id
  subnet_id      = aws_subnet.private2.id
}
resource "aws_route_table_association" "pvt-subnet3-assoc" {
  route_table_id = aws_route_table.private-rtb.id
  subnet_id      = aws_subnet.private3.id
}
