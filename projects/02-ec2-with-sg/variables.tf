variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "ami_id" {
  description = "AMI ID for the region you're deploying to (e.g. latest Amazon Linux 2023)"
  type        = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ssh_allowed_cidr" {
  description = "Your IP as a /32, e.g. 203.0.113.25/32 — never leave this as 0.0.0.0/0"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
  default     = null
}
