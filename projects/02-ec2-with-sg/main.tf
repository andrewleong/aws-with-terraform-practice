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
  source              = "../../modules/vpc"
  name                = "practice-ec2-vpc"
  cidr_block          = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
}

module "web_server" {
  source            = "../../modules/ec2-instance"
  name              = "practice-web"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  vpc_id            = module.vpc.vpc_id
  subnet_id         = module.vpc.public_subnet_ids[0]
  ssh_allowed_cidr  = var.ssh_allowed_cidr
  key_name          = var.key_name
}
