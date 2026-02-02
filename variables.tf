variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "domain_name" {
  description = "Primary domain name"
  type        = string
  default     = "omizu-k.com"
}

variable "domain_aliases" {
  description = "Additional domain aliases for CloudFront"
  type        = list(string)
  default     = ["www.omizu-k.com"]
}

variable "s3_bucket_name" {
  description = "S3 bucket name for static site content"
  type        = string
  default     = "omizu-k-site"
}
