module "dynamodb" {
  source      = "./modules/dynamodb"
  table_name  = "CSS-${var.environment}-${var.dynamodb_table_name}"
  billing_mode = var.dynamodb_billing_mode

  hash_key    = var.dynamodb_hash_key

  tags        = var.tags_dynamo
 
}