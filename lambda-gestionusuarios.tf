module "lambda-gestionusuarios" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_gestionusuarios
  environment              = var.environment
  lambda_function_name     = var.name_lambda_gestionusuarios
  aws_iam_role_arn         = aws_iam_role.lambda_execution_role_gestionusuarios.arn
  index_handler            = var.index_handler_gestionusuarios
  runtime                  = var.runtime_lambda_gestionusuarios
  package_type_lambda      = var.package_type_lambda_gestionusuarios
  lambda_function_source   = var.lambda_function_source_gestionusuarios
  timeout_lambda           = var.timeout_lambda_gestionusuarios
  memory_size_lambda       = var.memory_size_lambda_gestionusuarios
  env = var.env
  vpc_id = var.vpc_id
  tags                     = var.tags_gestionusuarios
  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

  environment_variables = var.environment_variables_gestionusuarios



}

