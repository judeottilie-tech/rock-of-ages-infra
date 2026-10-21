output "cloudfront_domain" {
  value       = aws_cloudfront_distribution.frontend.domain_name
  description = "Domain name of the CloudFront distribution"
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.frontend.id
  description = "Name of the S3 bucket hosting the frontend"
}

output "aws_cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.frontend.id
  description = "ID of the CloudFront distribution"
}

output "ecr_registry_url" {
  value       = "${aws_ecr_repository.api.registry_id}.dkr.ecr.${var.aws_region}.amazonaws.com"
  description = "ECR registry URL for the API image"
}

output "ecr_repository" {
  value       = aws_ecr_repository.api.name
  description = "ECR repository name"
}

output "ec2_instance_id" {
  value       = aws_instance.api_server[*].id
  description = "IDs of the API EC2 instances"
}

output "alb_dns_name" {
  value       = aws_lb.application_load_balancer.dns_name
  description = "The DNS name of the Application Load Balancer"
}

output "db_host" {
  value       = aws_db_instance.rock_of_ages.address
  description = "PostgreSQL database endpoint"
}

output "db_name" {
  value       = aws_db_instance.rock_of_ages.db_name
  description = "database name"
}

output "db_user" {
  value       = aws_db_instance.rock_of_ages.username
  description = "database username"
}

output "github_oidc_role_arn" {
  value       = aws_iam_role.github_oidc.arn
  description = "ARN of the IAM role used by GitHub OIDC"
}
