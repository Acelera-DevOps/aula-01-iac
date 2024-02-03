resource "aws_key_pair" "key_aula" {
  key_name   = "key_aula"
  public_key = ""

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "instance_id" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.key_aula.key_name

  subnet_id                   = aws_subnet.subnet_aula-1.id
  associate_public_ip_address = true

  tags = {
    Name = "Aula-01"
  }
}

