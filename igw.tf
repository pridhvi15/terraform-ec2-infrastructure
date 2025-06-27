resource "aws_internet_gateway" "public-subnet-igw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.igw-name
  }
}