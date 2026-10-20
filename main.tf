# Provedor AWS configurado via variável
provider "aws" {
  region = var.aws_region
}

# Recurso principal do Bucket S3 (AWS Provider v5+)
resource "aws_s3_bucket" "meu_bucket" {
  bucket_prefix = var.bucket_prefix

  tags = {
    Name        = "Aula-01-S3-Bucket"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Course      = "Acelera-DevOps"
  }
}

# Versionamento desacoplado (padrão AWS Provider v5)
resource "aws_s3_bucket_versioning" "meu_bucket_versioning" {
  bucket = aws_s3_bucket.meu_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Criptografia Server-Side (SSE-S3 AES256) habilitada por padrão
resource "aws_s3_bucket_server_side_encryption_configuration" "meu_bucket_encryption" {
  bucket = aws_s3_bucket.meu_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Bloqueio total de acesso público (S3 Block Public Access)
resource "aws_s3_bucket_public_access_block" "meu_bucket_public_access" {
  bucket = aws_s3_bucket.meu_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
