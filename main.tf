# Provedor que estaremos utilizando 
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "meu_bucket" {
  bucket = "aula-eriktonon222"
  acl    = "private"

  versioning {
    enabled = true
  }
}
