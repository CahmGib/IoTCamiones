
# Primer JSON
module "ssm_parameter_endpoints" {
  source      = "./modules/ssm-parameters"
  name        = "/css/iot/GeneralPath/awsServices"
  description = "Conjunto de endpoints "
  type        = "SecureString"
  value       = var.urlRed_json
  tags = {
        app = "iot"
  }
}

# Segundo JSON
module "ssm_parameter_config" {
  source      = "./modules/ssm-parameters"
  name        = "/css/iot/GeneralPath/timeOutRed"
  description = "Configuraciones generales en JSON"
  type        = "SecureString"
  value       = var.general_config_json
  tags = {
    
    app = "iot"
  }
}
