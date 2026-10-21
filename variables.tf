# variables.tf

variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-2"
}

variable "bucket_name" {
  description = "Name of the S3 bucket (must be globally unique)"
  type        = string
  default     = "rock-of-ages-terraform-origin-joa"
}

variable "github_org" {
  description = "GitHub organization or username that owns the app repos, for the OIDC trust policy"
  type        = string
  default     = "judeottilie-tech"
}

variable "db_username" {
  description = "Master DB username"
  type        = string
  default     = "rockadmin"
}

variable "db_password" {
  description = "Master DB password"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Initial database name"
  type        = string
  default     = "rockofages"
}