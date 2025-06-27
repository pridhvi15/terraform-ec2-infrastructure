resource "aws_launch_template" "aws-l-template" {
  name                   = var.temp-name
  instance_type          = var.instance-ty
  image_id               = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.sgp-instance.id]
  user_data              = var.bash
  key_name               = var.k-name
  tags = {
    Name = var.temp-name
  }
  depends_on = [aws_nat_gateway.my-nat]
}