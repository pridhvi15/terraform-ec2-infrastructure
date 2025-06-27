resource "aws_eip" "eip" {
  tags = {
    Name = var.aws_eip_name
  }
}