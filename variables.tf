variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "fkuss-devops"
}

variable "aws_account_id" {
  type        = number
  description = ""
  default     = 973795184365
}

variable "service_name" {
  type        = string
  description = ""
  default     = "autoscaling-app"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "instance_key_name" {
  type        = string
  description = ""
  default     = "fkuss_key"
}

variable "domain" {
  type        = string
  description = ""
  default     = "ffk07devops.com"
}
