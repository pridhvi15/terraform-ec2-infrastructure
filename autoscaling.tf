resource "aws_autoscaling_group" "auto-scaling" {
  name              = var.auto-scale
  max_size          = var.max_size
  min_size          = var.min_size
  health_check_type = var.health-type
  desired_capacity  = var.desired_capacity
  #   availability_zones = [var.avb-zone-sub-pvt1,var.avb-zone-sub-pvt2,var.avb-zone-sub-pvt3]
  vpc_zone_identifier = [aws_subnet.private1.id, aws_subnet.private2.id, aws_subnet.private3.id]
  target_group_arns   = [aws_lb_target_group.target-grp.arn]
  launch_template {
    id = aws_launch_template.aws-l-template.id

  }
  tag {
    key                 = var.tag-key
    value               = var.tag-value
    propagate_at_launch = var.propagate_at_launch
  }

}