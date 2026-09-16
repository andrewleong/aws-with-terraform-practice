variable "name" {
  type    = string
  default = "practice-ec2"
}

variable "ami_id" {
  description = "AMI ID to launch (region-specific)"
  type        = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed to SSH in, e.g. your-ip/32"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 key pair name for SSH"
  type        = string
  default     = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
