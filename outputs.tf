output "bucket_id" {
  description = "Nome (ID) do bucket S3 provisionado"
  value       = aws_s3_bucket.meu_bucket.id
}

output "bucket_arn" {
  description = "ARN do bucket S3 provisionado"
  value       = aws_s3_bucket.meu_bucket.arn
}
