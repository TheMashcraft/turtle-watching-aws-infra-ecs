variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_cidrs" {
  description = "The CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "flask-app"
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "my-flask-cluster"
}

variable "task_cpu" {
  description = "The amount of CPU to allocate to the task"
  type        = string
  default     = "256"
}

variable "task_memory" {
  description = "The amount of memory to allocate to the task"
  type        = string
  default     = "512"
}

variable "container_port" {
  description = "The port the container will listen on"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "The number of desired tasks"
  type        = number
  default     = 1
}

variable "docker_image_tag" {
  description = "The Docker image tag to use"
  type        = string
  default     = "latest"
}
