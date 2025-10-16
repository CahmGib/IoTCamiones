module "sqs" {
  source = "./modules/sqs"
  name_sqs = var.name_sqs
  delay_seconds = var.delay_seconds
  account = var.account
  region = var.region
  function_name = var.function_name_sqspain002
  environment = var.environment
  lambda_execution_role_arn = var.lambda_execution_role_arn
  max_message_size = var.max_message_size
  message_retention_seconds = var.message_retention_seconds
  receive_wait_time_seconds = var.receive_wait_time_seconds
}