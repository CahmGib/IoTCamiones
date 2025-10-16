resource "aws_dynamodb_table" "dynamodb_table" {
  name         = var.table_name
  billing_mode = var.billing_mode
  hash_key = var.hash_key
  point_in_time_recovery {
   enabled = true
  }
  attribute {
    name = var.hash_key
    type = "S"
  }

}

