module "lambda-iniciarventa" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_iniciarventa
  environment              = var.environment
  lambda_function_name     = var.name_lambda_iniciarventa
  aws_iam_role_arn         = aws_iam_role.lambda_execution_role_iniciarventa.arn
  index_handler            = var.index_handler_iniciarventa
  runtime                  = var.runtime_lambda_iniciarventa
  package_type_lambda      = var.package_type_lambda_iniciarventa
  lambda_function_source   = var.lambda_function_source_iniciarventa
  timeout_lambda           = var.timeout_lambda_iniciarventa
  memory_size_lambda       = var.memory_size_lambda_iniciarventa
  env = var.env
  vpc_id = var.vpc_id
  tags                     = var.tags_iniciarventa

  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

  environment_variables = var.environment_variables_iniciarventa


}

