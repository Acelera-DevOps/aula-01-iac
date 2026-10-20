resource "aws_subnet" "subnet_aula-1" {
  vpc_id                  = aws_vpc.aula01.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone

  tags = {
    Name      = "subnet_aula-1"
    ManagedBy = "Terraform"
  }
}
