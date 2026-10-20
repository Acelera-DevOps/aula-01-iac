output "vpc_id" {
  description = "ID da VPC provisionada"
  value       = aws_vpc.aula01.id
}

output "subnet_id" {
  description = "ID da Subnet provisionada"
  value       = aws_subnet.subnet_aula-1.id
}

output "instance_id" {
  description = "ID da instância EC2 Ubuntu 24.04 LTS"
  value       = aws_instance.instance_id.id
}

output "instance_public_ip" {
  description = "Endereço IP público da instância EC2"
  value       = aws_instance.instance_id.public_ip
}
