variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Must be globally unique across all of AWS"
  type        = string
}
