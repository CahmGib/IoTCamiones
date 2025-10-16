module "lambda-generarfactura" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_generarfactura
  environment              = var.environment
  lambda_function_name     = var.name_lambda_generarfactura
  aws_iam_role_arn         = aws_iam_role.lambda_execution_role_generarfactura.arn
  index_handler            = var.index_handler_generarfactura
  runtime                  = var.runtime_lambda_generarfactura
  package_type_lambda      = var.package_type_lambda_generarfactura
  lambda_function_source   = var.lambda_function_source_generarfactura
  timeout_lambda           = var.timeout_lambda_generarfactura
  memory_size_lambda       = var.memory_size_lambda_generarfactura
  env = var.env
  vpc_id = var.vpc_id
  tags                     = var.tags_generarfactura

  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

  environment_variables = {
    "ENV_REGION" = var.region
  }


}

