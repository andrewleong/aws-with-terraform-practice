variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "enable_versioning" {
  type    = bool
  default = false
}

variable "block_public_access" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
