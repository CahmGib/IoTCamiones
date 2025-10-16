module "lambda-gestionflotas" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_gestionflotas
  environment              = var.environment
  lambda_function_name     = var.name_lambda_gestionflotas
  aws_iam_role_arn         = aws_iam_role.lambda_execution_role_gestionflotas.arn
  index_handler            = var.index_handler_gestionflotas
  runtime                  = var.runtime_lambda_gestionflotas
  package_type_lambda      = var.package_type_lambda_gestionflotas
  lambda_function_source   = var.lambda_function_source_gestionflotas
  timeout_lambda           = var.timeout_lambda_gestionflotas
  memory_size_lambda       = var.memory_size_lambda_gestionflotas
  env = var.env
  vpc_id = var.vpc_id
  tags                     = var.tags_gestionflotas

  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

  environment_variables = var.environment_variables_gestionflotas


}

