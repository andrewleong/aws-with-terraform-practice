variable "name" {
  description = "Name prefix for resources"
  type        = string
  default     = "practice-vpc"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "azs" {
  description = "Availability zones matching public_subnet_cidrs order"
  type        = list(string)
}

variable "tags" {
  description = "Extra tags to apply to all resources"
  type        = map(string)
  default     = {}
}
