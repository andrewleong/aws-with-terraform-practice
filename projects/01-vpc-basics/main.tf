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

module "vpc" {
  source               = "../../modules/vpc"
  name                 = "practice-vpc"
  cidr_block           = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  azs                  = var.azs

  tags = {
    Environment = "practice"
  }
}
