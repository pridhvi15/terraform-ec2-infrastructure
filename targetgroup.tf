resource "aws_lb_target_group" "target-grp" {
  name     = var.tg-name
  port     = var.http-port
  protocol = var.target-protocol
  vpc_id   = aws_vpc.myvpc.id
}

# resource "aws_lb_target_group_attachment" "instance-tg-attachment1" {
#   target_group_arn = aws_lb_target_group.target-grp.arn
#   target_id        = aws_instance.instance-server1.id
#   port             = var.http-port
# }

# resource "aws_lb_target_group_attachment" "instance-tg-attachment2" {
#   target_group_arn = aws_lb_target_group.target-grp.arn
#   target_id        = aws_instance.instance-server2.id
#   port             = var.http-port
# }

# resource "aws_lb_target_group_attachment" "instance-tg-attachment3" {
#   target_group_arn = aws_lb_target_group.target-grp.arn
#   target_id        = aws_instance.instance-server3.id
#   port             = var.http-port
# }