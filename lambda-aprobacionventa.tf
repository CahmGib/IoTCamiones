module "lambda-aprobacionventa" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_aprobacionventa
  environment              = var.environment
  lambda_function_name     = var.name_lambda_aprobacionventa
  aws_iam_role_arn       = aws_iam_role.lambda_execution_role_aprobacionventa.arn
  index_handler          = var.index_handler_aprobacionventa
  runtime                = var.runtime_lambda_aprobacionventa
  package_type_lambda    = var.package_type_lambda_aprobacionventa
  lambda_function_source = var.lambda_function_source_aprobacionventa
  timeout_lambda         = var.timeout_lambda_aprobacionventa
  memory_size_lambda     = var.memory_size_lambda_aprobacionventa
  env = var.env
  vpc_id = var.vpc_id
  tags                   = var.tags_aprobacionventa
  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

      environment_variables = {
      "ENV_REGION" = var.region
    }


}

