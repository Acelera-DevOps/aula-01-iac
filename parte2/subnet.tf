resource "aws_subnet" "subnet_aula-1" {
  vpc_id                  = aws_vpc.aula01.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "subnet_aula-1"
  }
}
