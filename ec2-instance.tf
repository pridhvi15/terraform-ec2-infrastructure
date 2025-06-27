data "aws_ami" "ubuntu" {
  most_recent = var.mst-recent

  filter {
    name   = var.f1-name
    values = var.f1-values
  }

  filter {
    name   = var.f2-name
    values = var.f2-value
  }

  owners = var.own-no # Canonical
}

# resource "aws_instance" "instance-server1" {
#   ami                    = data.aws_ami.ubuntu.id
#   subnet_id              = aws_subnet.private1.id
#   instance_type          = var.instance-ty
#   key_name               = var.k-name
#   vpc_security_group_ids = [aws_security_group.sgp-instance.id]
#   user_data_base64       = var.bash

#   tags = {
#     Name = var.t-name
#   }
#   depends_on = [aws_nat_gateway.my-nat]
# }


# resource "aws_instance" "instance-server2" {
#   ami                    = data.aws_ami.ubuntu.id
#   subnet_id              = aws_subnet.private2.id
#   instance_type          = var.instance-ty
#   key_name               = var.k-name
#   vpc_security_group_ids = [aws_security_group.sgp-instance.id]
#   user_data_base64       = var.bash

#   tags = {
#     Name = var.t-name
#   }
#   depends_on = [aws_nat_gateway.my-nat]
# }


# resource "aws_instance" "instance-server3" {
#   ami                    = data.aws_ami.ubuntu.id
#   subnet_id              = aws_subnet.private3.id
#   instance_type          = var.instance-ty
#   key_name               = var.k-name
#   vpc_security_group_ids = [aws_security_group.sgp-instance.id]
#   user_data_base64       = var.bash

#   tags = {
#     Name = var.t-name
#   }
#   depends_on = [aws_nat_gateway.my-nat]
# }