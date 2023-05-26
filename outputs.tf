output "id" {
  description = "The id of the bucket."
  value       = aws_s3_bucket.main.id
}

output "arn" {
  description = "The arn of the bucket."
  value       = aws_s3_bucket.main.arn
}

output "domain_name" {
  description = "The domain name of the bucket."
  value       = aws_s3_bucket.main.bucket_domain_name
}
