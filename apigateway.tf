module "apigateway" {
  source      = "./modules/apigateway"
  api_name    = var.api_name
  stage_name  = var.stage_name
  environment = var.environment
  project     = var.project

}

