resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = var.vpc-name
  }
}

resource "aws_subnet" "public1" {

  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr-block-sub-pub1
  map_public_ip_on_launch = var.map-public-ip-launch
  availability_zone       = var.avb-zone-sub-pub1
  tags = {
    Name = var.tag-name-pub1
  }

}

resource "aws_subnet" "public2" {
  cidr_block              = var.cidr-block-sub-pub2
  map_public_ip_on_launch = var.map-public-ip-launch
  availability_zone       = var.avb-zone-sub-pub2
  vpc_id                  = aws_vpc.myvpc.id
  tags = {
    Name = var.tag-name-pub2
  }

}

resource "aws_subnet" "public3" {
  vpc_id                  = aws_vpc.myvpc.id
  map_public_ip_on_launch = var.map-public-ip-launch
  availability_zone       = var.aws-zone-sub-pub3
  cidr_block              = var.cidr-block-sub-pub3
  tags = {
    Name = var.tag-name-pub3
  }
}

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr-block-sub-pvt1
  availability_zone = var.avb-zone-sub-pvt1
  tags = {
    Name = var.tag-name-pvt1
  }

}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr-block-sub-pvt2
  availability_zone = var.avb-zone-sub-pvt2
  tags = {
    Name = var.tag-name-pvt2
  }

}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr-block-sub-pvt3
  availability_zone = var.avb-zone-sub-pvt3
  tags = {
    Name = var.tag-name-pvt3
  }

}