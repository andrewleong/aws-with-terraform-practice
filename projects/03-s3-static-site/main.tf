terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "site_bucket" {
  source             = "../../modules/s3-bucket"
  bucket_name        = var.bucket_name
  enable_versioning  = false

  tags = {
    Environment = "practice"
  }
}
