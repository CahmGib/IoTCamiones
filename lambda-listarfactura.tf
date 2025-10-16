module "lambda-param" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_listarfactura
  environment              = var.environment
  lambda_function_name     = var.name_lambda_listarfactura
  aws_iam_role_arn         = aws_iam_role.lambda_execution_role_listarfactura.arn
  index_handler            = var.index_handler_listarfactura
  runtime                  = var.runtime_lambda_listarfactura
  package_type_lambda      = var.package_type_lambda_listarfactura
  lambda_function_source   = var.lambda_function_source_listarfactura
  timeout_lambda           = var.timeout_lambda_listarfactura
  memory_size_lambda       = var.memory_size_lambda_listarfactura
  env = var.env
  vpc_id = var.vpc_id
  tags                     = var.tags_listarfactura

  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

  environment_variables = var.environment_variables_listarfactura


}

