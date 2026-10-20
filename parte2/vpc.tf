resource "aws_vpc" "aula01" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name      = "vpc-aula-01"
    ManagedBy = "Terraform"
  }
}
