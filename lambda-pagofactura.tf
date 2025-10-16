module "lambda-pagofactura" {
  source                   = "./modules/lambda"
  lambda_function_filename = var.lambda_function_filename_pagofactura
  environment              = var.environment
  lambda_function_name     = var.name_lambda_pagofactura
  aws_iam_role_arn       = aws_iam_role.lambda_execution_role_pagofactura.arn
  index_handler          = var.index_handler_pagofactura
  runtime                = var.runtime_lambda_pagofactura
  package_type_lambda    = var.package_type_lambda_pagofactura
  lambda_function_source = var.lambda_function_source_pagofactura
  timeout_lambda         = var.timeout_lambda_pagofactura
  memory_size_lambda     = var.memory_size_lambda_pagofactura
  env = var.env
  vpc_id = var.vpc_id
  tags                   = var.tags_pagofactura
  lambda_source_arn       = "arn:aws:execute-api:us-east-1:282927509129:${module.apigateway.rest_api_id}/*/*/*"

      environment_variables = {
      "ENV_REGION" = var.region
    }




}

