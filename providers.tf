terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Project     = "infra-cloudfront-s3-site"
      ManagedBy   = "Terraform"
    }
  }
}

# us-east-1 provider for ACM (CloudFront requires cert in us-east-1)
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"

  default_tags {
    tags = {
      Environment = "dev"
      Project     = "infra-cloudfront-s3-site"
      ManagedBy   = "Terraform"
    }
  }
}
