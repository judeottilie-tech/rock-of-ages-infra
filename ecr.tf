# -----------------------------
# Module 5: ECR
# -----------------------------
resource "aws_ecr_repository" "api" {
  name                 = "rock-of-ages-api"
  image_tag_mutability = "MUTABLE"
  force_delete         = true # so `terraform destroy` removes it even with images inside
}
