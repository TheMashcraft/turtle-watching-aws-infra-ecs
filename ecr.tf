## Leave this line while performing a terraform state rm
/*
resource "aws_ecrpublic_repository" "main" {
  repository_name = var.ecr_repository_name
}

import {
  to = aws_ecrpublic_repository.main
  id = "flask-app"
}
*/
