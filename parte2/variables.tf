variable "aws_region" {
  description = "Região da AWS para provisionamento da VPC e EC2"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "Bloco CIDR da VPC da Aula 01"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Bloco CIDR da Subnet pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Zona de disponibilidade da Subnet"
  type        = string
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "Tipo da instância EC2 (Free Tier elegível: t3.micro)"
  type        = string
  default     = "t3.micro"
}

variable "ssh_public_key" {
  description = "Chave pública SSH (formato OpenSSH) para acesso à instância EC2"
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGbM3wX0X9p7xK8vN5m4Q2r1T6y8U0i2O4p6A8s0D2f4 aluno@acelera-devops"
}
