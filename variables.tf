variable "aws_region" {
  description = "Região da AWS onde os recursos serão provisionados"
  type        = string
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefixo único para o nome do bucket S3"
  type        = string
  default     = "acelera-devops-aula01-"
}

variable "environment" {
  description = "Ambiente de execução (dev, staging, prod)"
  type        = string
  default     = "dev"
}
