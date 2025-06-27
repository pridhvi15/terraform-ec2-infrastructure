resource "aws_lb" "load-balancer" {
  name               = var.lb-name
  load_balancer_type = var.lb-type
  security_groups    = [aws_security_group.sgp-lb.id]
  subnets            = [aws_subnet.public1.id, aws_subnet.public2.id, aws_subnet.public3.id]

}

resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = aws_lb.load-balancer.arn
  port              = var.https-port
  protocol          = var.target-https-protocol
  certificate_arn   = data.aws_acm_certificate.issued.arn

  default_action {
    type             = var.aws_lister_action
    target_group_arn = aws_lb_target_group.target-grp.arn
  }
}

resource "aws_lb_listener" "lb_listener_redirect" {
  load_balancer_arn = aws_lb.load-balancer.arn
  port              = var.http-port
  protocol          = var.target-protocol

  default_action {
    type = var.default_action

    redirect {
      port        = var.https-port
      protocol    = var.target-https-protocol
      status_code = var.status_code
    }
  }

}