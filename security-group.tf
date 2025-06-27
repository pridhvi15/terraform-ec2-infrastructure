resource "aws_security_group" "sgp-instance" {
  name        = var.sgp-name
  description = var.sgp-description
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = var.sgp-name
  }

}

# resource "aws_vpc_security_group_ingress_rule" "sgp-vpc-port-https" {
#   security_group_id = aws_security_group.sgp-vpc.id
#   from_port         = var.https-port
#   ip_protocol       = var.ip
#   to_port           = var.https-port
#   cidr_ipv4         = var.cidr-blk
# }
# resource "aws_vpc_security_group_ingress_rule" "sgp-vpc-port-ssh" {
#   security_group_id = aws_security_group.sgp-vpc.id
#   from_port         = var.ssh-port
#   ip_protocol       = var.ip
#   to_port           = var.ssh-port
#   cidr_ipv4         = var.cidr-blk
# }
resource "aws_vpc_security_group_ingress_rule" "sgp-instance-port-http" {
  security_group_id            = aws_security_group.sgp-instance.id
  from_port                    = var.http-port
  ip_protocol                  = var.ip
  to_port                      = var.http-port
  referenced_security_group_id = aws_security_group.sgp-lb.id


}


resource "aws_vpc_security_group_egress_rule" "sgp-instance-port-all" {
  security_group_id = aws_security_group.sgp-instance.id
  cidr_ipv4         = var.cidr-blk
  ip_protocol       = var.ip-all # semantically equivalent to all ports
}

resource "aws_security_group" "sgp-lb" {
  name        = var.sgp-lb-name
  description = var.sgp-description
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    from_port   = var.http-port
    protocol    = var.ip
    to_port     = var.http-port
    cidr_blocks = [var.cidr-blk]
  }

  ingress {
    from_port   = var.https-port
    protocol    = var.ip
    to_port     = var.https-port
    cidr_blocks = [var.cidr-blk]
  }

  egress {
    cidr_blocks = [var.cidr-blk]
    from_port   = var.allport
    to_port     = var.allport
    protocol    = var.ip-all
  }


  tags = {
    Name = var.tag-name
  }

}