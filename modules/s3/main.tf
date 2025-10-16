
resource "aws_s3_bucket" "buckets" {
  for_each = { for idx, name in var.bucket_names : idx => "${name}-${var.environment}"
  } # Iterar sobre la lista de nombres de buckets
  bucket = each.value
  lifecycle {
    prevent_destroy = false
  }
}
resource "aws_s3_bucket_public_access_block" "access_block" {
  for_each = aws_s3_bucket.buckets
  bucket   = each.value.id
  # Aquí van los parámetros de acceso público
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  restrict_public_buckets = var.restrict_public_buckets
  ignore_public_acls      = var.ignore_public_acls
}

resource "aws_s3_bucket_versioning" "versioning" {
  for_each = aws_s3_bucket.buckets
  bucket   = each.value.id
  versioning_configuration {
    status = var.versioning
  }
}
# Encriptamos cada bucket usando SSE-S3:
resource "aws_s3_bucket_server_side_encryption_configuration" "encrypt" {
  for_each = aws_s3_bucket.buckets
  bucket   = each.value.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}