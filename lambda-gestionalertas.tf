module "lambda-gestionalertas" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_gestionalertas
  environment              = var.environment
  lambda_function_name     = var.name_lambda_gestionalertas
  aws_iam_role_arn         = aws_iam_role.lambda_execution_role_gestionalertas.arn
  index_handler            = var.index_handler_gestionalertas
  runtime                  = var.runtime_lambda_gestionalertas
  package_type_lambda      = var.package_type_lambda_gestionalertas
  lambda_function_source   = var.lambda_function_source_gestionalertas
  timeout_lambda           = var.timeout_lambda_gestionalertas
  memory_size_lambda       = var.memory_size_lambda_gestionalertas
  env = var.env
  vpc_id = var.vpc_id
  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

  tags                     = var.tags_gestionalertas

  environment_variables = var.environment_variables_gestionalertas


}

