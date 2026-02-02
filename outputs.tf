output "route53_nameservers" {
  description = "Route53 nameservers to configure at domain registrar (お名前.com)"
  value       = aws_route53_zone.main.name_servers
}

output "cloudfront_domain_name" {
  description = "CloudFront distribution domain name"
  value       = aws_cloudfront_distribution.site.domain_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID (for cache invalidation)"
  value       = aws_cloudfront_distribution.site.id
}

output "s3_bucket_name" {
  description = "S3 bucket name for uploading static files"
  value       = aws_s3_bucket.site.id
}

output "s3_bucket_arn" {
  description = "S3 bucket ARN"
  value       = aws_s3_bucket.site.arn
}

output "hosted_zone_id" {
  description = "Route53 hosted zone ID"
  value       = aws_route53_zone.main.zone_id
}

output "apex_domain" {
  description = "Apex domain name"
  value       = var.domain_name
}

output "www_domain" {
  description = "WWW subdomain name"
  value       = "www.${var.domain_name}"
}
