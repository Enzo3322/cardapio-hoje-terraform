variable "aws_region" {
  description = "Região AWS para implantação"
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto"
  default     = "serverless-app"
}

variable "environment" {
  description = "Ambiente de implantação"
  default     = "production"
}
