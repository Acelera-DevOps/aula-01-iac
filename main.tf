# Provedor que estaremos utilizando 
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "meu_bucket" {
  bucket = "aula-eriktonon-0202"
  acl    = "public-read"

  versioning {
    enabled = true
  }
}
