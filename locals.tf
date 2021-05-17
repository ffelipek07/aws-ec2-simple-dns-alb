locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "AWS com Terraform"
    CreatedAt = "2021-05-13"
    ManagedBy = "Terraform"
    Owner     = "AWS Devops"
    Service   = "Interview"
  }
}
