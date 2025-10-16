module "lambda-reporteconsultas" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_reporteconsultas
  environment              = var.environment
  lambda_function_name     = var.name_lambda_reporteconsultas
  aws_iam_role_arn         = aws_iam_role.lambda_execution_role_reporteconsultas.arn
  index_handler            = var.index_handler_reporteconsultas
  runtime                  = var.runtime_lambda_reporteconsultas
  package_type_lambda      = var.package_type_lambda_reporteconsultas
  lambda_function_source   = var.lambda_function_source_reporteconsultas
  timeout_lambda           = var.timeout_lambda_reporteconsultas
  memory_size_lambda       = var.memory_size_lambda_reporteconsultas
  env = var.env
  vpc_id = var.vpc_id
  tags                     = var.tags_reporteconsultas
  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

  environment_variables = {
    "ENV_REGION" = var.region
  }



}

