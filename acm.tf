resource "aws_acm_certificate" "this" {
  domain_name       = var.domain
  validation_method = "DNS"
  
  tags = merge(local.common_tags, { Name = "DNS" })
  
}

resource "aws_acm_certificate_validation" "this" {
  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = [for record in aws_route53_record.this : record.fqdn]
}