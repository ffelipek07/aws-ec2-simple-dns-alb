resource "aws_route53_zone" "public" {
  name = var.domain
}

resource "aws_acm_certificate" "this" {
  domain_name       = var.domain
  validation_method = "DNS"
  
  tags = merge(local.common_tags, { Name = "DNS" })
  
  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    aws_route53_zone.public,
  ]
}

resource "aws_route53_record" "this" {
  for_each = {
    for dvo in aws_acm_certificate.this.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = aws_route53_zone.public.zone_id
}

resource "aws_acm_certificate_validation" "this" {
  
  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = [for record in aws_route53_record.this : record.fqdn]
}
