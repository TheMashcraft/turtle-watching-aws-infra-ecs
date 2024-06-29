resource "aws_ecr_repository" "main" {
  name = var.ecr_repository_name
}

import {
  to = aws_ecr_repository.main
  id = var.ecr_repository_name
}