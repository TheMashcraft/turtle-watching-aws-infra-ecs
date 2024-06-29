terraform {
  backend "s3" {
    bucket         = "tf-backend-turtle"
    key            = "ecs/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
