# Recurso para gerar uma string aleatória
resource "random_string" "bucket_suffix" {
  length  = 6
  special = false
  upper   = false
}

# Recurso do S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.bucket_name}-${random_string.bucket_suffix.result}"
}