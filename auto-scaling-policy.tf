resource "aws_autoscaling_policy" "policy" {
  name                   = var.as-policy-name
  autoscaling_group_name = aws_autoscaling_group.auto-scaling.name
  policy_type            = var.policy-type
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = var.metric-type
    }
    target_value = var.target-value
  }

}