module "s3-almacenamiento" {
  source                  = "./modules/s3"
  bucket_names            = var.bucket_names
  environment             = var.environment
  versioning              = var.versioning
  block_public_policy     = var.block_public_policy
  block_public_acls       = var.block_public_acls
  restrict_public_buckets = var.restrict_public_buckets
  ignore_public_acls      = var.ignore_public_acls


}