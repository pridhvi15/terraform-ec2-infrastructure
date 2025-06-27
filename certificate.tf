data "aws_acm_certificate" "issued" {
  domain   = var.domain
  statuses = var.statuses
}