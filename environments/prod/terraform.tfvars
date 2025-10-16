
region      = "us-east-1"
environment = "prd"
project     = "css"
account     = "282927509129"
vpc_id      = "vpc-0ec622033fece21dd"
env         = "prd"

api_name   = "api"
stage_name = "prd"

####################################
# Lambda content
###################################
tags_content                     = "css"
lambda_function_filename_content = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
lambda_function_name             = "lambda-content"      # Reemplaza con el nombre de tu función Lambda
index_handler_content            = "hello.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_content           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_content      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_content   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_content           = 30
memory_size_lambda_content       = 256


name_lambda_content = "lambda-content"
environment_variables_content = {
  ENV_REGION  = "us-east-1"
  DB_HOST     = "/css/prd/aurora/dbw.uri"
  DB_NAME     = "/css/prd/aurora/dbw.name"
  DB_PASSWORD = "/css/prd/aurora/dbw.password"
  DB_PORT     = "/css/prd/aurora/dbw.port"
  DB_USER     = "/css/prd/aurora/dbw.user"

}


####################################
# Lambda contentmobile
###################################
tags_contentmobile                     = "css"
lambda_function_filename_contentmobile = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_contentmobile            = "hello.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_contentmobile           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_contentmobile      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_contentmobile   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_contentmobile           = 10
memory_size_lambda_contentmobile       = 256

name_lambda_contentmobile = "lambda-contentmobile"
environment_variables_contentmobile = {
  ENV_REGION  = "us-east-1"
  DB_HOST     = "/css/prd/aurora/dbw.uri"
  DB_NAME     = "/css/prd/aurora/dbw.name"
  DB_PASSWORD = "/css/prd/aurora/dbw.password"
  DB_PORT     = "/css/prd/aurora/dbw.port"
  DB_USER     = "/css/prd/aurora/dbw.user"

}

####################################
# Lambda param-config
###################################
tags_param_config                     = "css"
lambda_function_filename_param_config = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_param_config            = "hello.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_param_config           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_param_config      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_param_config   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_param_config           = 10
memory_size_lambda_param_config       = 128

name_lambda_param_config = "lambda-param-config"
environment_variables_param_config = {
  ENV_REGION  = "us-east-1"
  DB_HOST     = "/css/prd/aurora/dbw.uri"
  DB_NAME     = "/css/prd/aurora/dbw.name"
  DB_PASSWORD = "/css/prd/aurora/dbw.password"
  DB_PORT     = "/css/prd/aurora/dbw.port"
  DB_USER     = "/css/prd/aurora/dbw.user"
}


####################################
# Lambda survey-backend
###################################
tags_survey_backend                     = "css"
lambda_function_filename_survey_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_survey_backend            = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_survey_backend           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_survey_backend      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_survey_backend   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_survey_backend           = 10
memory_size_lambda_survey_backend       = 128

name_lambda_survey_backend = "lambda-survey-backend"
environment_variables_survey_backend = {
  ENV_REGION  = "us-east-1"
  DB_HOST     = "/css/prd/aurora/dbw.uri"
  DB_NAME     = "/css/prd/aurora/dbw.name"
  DB_PASSWORD = "/css/prd/aurora/dbw.password"
  DB_PORT     = "/css/prd/aurora/dbw.port"
  DB_USER     = "/css/prd/aurora/dbw.user"
}

####################################
# Lambda certification
###################################
tags_certification                     = "css"
lambda_function_filename_certification = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_certification            = "hello.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_certification           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_certification      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_certification   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_certification           = 45
memory_size_lambda_certification       = 256

name_lambda_certification = "lambda-certification"
environment_variables_certification = {
  AUTH                    = "/css/prd/endpoint/authorization"
  DB_HOST                 = "/css/prd/aurora/dbw.uri"
  DB_NAME                 = "/css/prd/aurora/dbw.name"
  DB_PASSWORD             = "/css/prd/aurora/dbw.password"
  DB_PORT                 = "/css/prd/aurora/dbw.port"
  DB_USER                 = "/css/prd/aurora/dbw.user"
  DIGITALWARESAAS_API_URL = "/css/prd/aurora/digitalware"
  ENV_REGION              = "us-east-1"
  PDF_GEN                 = "/css/prd/aurora/gateway"
  URL                     = "/css/prd/endpoint/domain"

}


####################################
# Lambda pqrs-backend
###################################
tags_pqrs_backend                     = "css"
lambda_function_filename_pqrs_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_pqrs_backend            = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_pqrs_backend           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_pqrs_backend      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_pqrs_backend   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_pqrs_backend           = 10
memory_size_lambda_pqrs_backend       = 128

name_lambda_pqrs_backend = "lambda-pqrs-backend"


####################################
# Lambda audit-backend
###################################
tags_audit_backend                     = "css"
lambda_function_filename_audit_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_audit_backend            = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_audit_backend           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_audit_backend      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_audit_backend   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_audit_backend           = 10
memory_size_lambda_audit_backend       = 128

name_lambda_audit_backend = "lambda-audit-backend"

####################################
# Lambda analytics
###################################
tags_analytics                     = "css"
lambda_function_filename_analytics = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_analytics            = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_analytics           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_analytics      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_analytics   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_analytics           = 10
memory_size_lambda_analytics       = 128

name_lambda_analytics = "lambda-analytics"
environment_variables_content_content = {
  DB_HOST     = "/css/prd/aurora/dbw.uri"
  DB_NAME     = "/css/prd/aurora/dbw.name"
  DB_PASSWORD = "/css/prd/aurora/dbw.password"
  DB_PORT     = "/css/prd/aurora/dbw.port"
  DB_USER     = "/css/prd/aurora/dbw.user"
  ENV_REGION  = "us-east-1"
}


####################################
# Lambda system-backend
###################################
tags_system_backend                     = "css"
lambda_function_filename_system_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_system_backend            = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_system_backend           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_system_backend      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_system_backend   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_system_backend           = 10
memory_size_lambda_system_backend       = 128

name_lambda_system_backend = "lambda-system-backend"

####################################
# Lambda auth-user
###################################
tags_auth_user                     = "css"
lambda_function_filename_auth_user = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_auth_user            = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_auth_user           = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_auth_user      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_auth_user   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_auth_user           = 60
memory_size_lambda_auth_user       = 256

name_lambda_auth_user = "lambda-auth-user"

environment_variables_auth_user = {
  AUTH                 = "/css/prd/endpoint/authorization"
  COGNITO_CLIENT_ID    = "1m8pqjsqjm3c0m903r70o3q9k1"
  COGNITO_USER_POOL_ID = "us-east-1_PEETh0y4K"
  DB_HOST              = "/css/prd/aurora/dbw.uri"
  DB_NAME              = "/css/prd/aurora/dbw.name"
  DB_PASSWORD          = "/css/prd/aurora/dbw.password"
  DB_PORT              = "/css/prd/aurora/dbw.port"
  DB_USER              = "/css/prd/aurora/dbw.user"
  URL                  = "/css/prd/endpoint/domain"
  ENV_REGION           = "us-east-1"
  EMAIL_SOURCE         = ""
  ISSUER               = "/css/prd/jwt/issuer"
  SECRET_KEY           = "/css/prd/jwt/secret"
  AUDIENCE             = "/css/prd/jwt/audience"
}

####################################
# Lambda webauthuser
###################################
tags_webauthuser                     = "css"
lambda_function_filename_webauthuser = "./lambda/lambda.zip"           # Reemplaza con el nombre de tu archivo Lambda
index_handler_webauthuser            = "lambda_handler.lambda_handler" # Reemplaza con el manejador de tu Lambda
runtime_lambda_webauthuser           = "python3.11"                    # Reemplaza con el runtime de tu Lambda
package_type_lambda_webauthuser      = "Zip"                           # Tipo de paquete (Zip o Image)
lambda_function_source_webauthuser   = "./lambda/lambda.zip"           # Ruta al código fuente o imagen
timeout_lambda_webauthuser           = 10
memory_size_lambda_webauthuser       = 128

name_lambda_webauthuser = "lambda-webauthuser"
environment_variables_webauthuser = {
  DB_SECRET_NAME      = "/css/prd/aurora"
  USER_POOL_CLIENT_ID = "46blfs0p8k7qijl9hibgm4do0n"
  USER_POOL_ID        = "us-east-1_trdhIvu9M"
  ALLOWED_ORIGIN      = "dhoz994fa7x7u.cloudfront.net"

}

####################################
# Lambda images
###################################
tags_images                     = "css"
lambda_function_filename_images = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_images            = "lambda_handler.lambda_handler"
runtime_lambda_images           = "python3.11"          # Reemplaza con el runtime de tu Lambda
package_type_lambda_images      = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_images   = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_images           = 10
memory_size_lambda_images       = 128

name_lambda_images = "lambda-images"
environment_variables_images = {
  ALLOWED_IMAGE_EXTENSIONS = "jpg,jpeg,png,gif,webp,svg,heic,ico"
  BUCKET_NAME              = "s3-css-images-assets-store-prd"
  CLIENT_SECRET            = "l8lm3h75hclc4cplausad0ke8445ch2rgbemgn4gr8rg04gi839"
  COGNITO_CLIENT_ID        = "2i8f9udqus1plea43e9lf9563c"
  COGNITO_USER_POOL_ID     = "us-east-1_U3BQQbqZ9"
  DB_HOST              = "/css/prd/aurora/dbw.uri"
  DB_NAME              = "/css/prd/aurora/dbw.name"
  DB_PASSWORD          = "/css/prd/aurora/dbw.password"
  DB_PORT              = "/css/prd/aurora/dbw.port"
  DB_USER              = "/css/prd/aurora/dbw.user"
  ENV_REGION               = "us-east-1"
}

####################################
# Lambda errors
###################################
tags_errors                     = "css"
lambda_function_filename_errors = "./lambda/lambda.zip"           # Reemplaza con el nombre de tu archivo Lambda
index_handler_errors            = "lambda_handler.lambda_handler" # Reemplaza con el manejador de tu Lambda
runtime_lambda_errors           = "python3.11"                    # Reemplaza con el runtime de tu Lambda
package_type_lambda_errors      = "Zip"                           # Tipo de paquete (Zip o Image)
lambda_function_source_errors   = "./lambda/lambda.zip"           # Ruta al código fuente o imagen
timeout_lambda_errors           = 10
memory_size_lambda_errors       = 128

name_lambda_errors = "lambda-errors"
environment_variables_errors = {
  CLIENT_SECRET        = "l8lm3h75hclc4cplausad0ke8445ch2rgbemgn4gr8rg04gi839"
  COGNITO_CLIENT_ID    = "2i8f9udqus1plea43e9lf9563c"
  COGNITO_USER_POOL_ID = "us-east-1_U3BQQbqZ9"
  ENV_REGION           = "us-east-1"
}

####################################
# Lambda pdf.generator
###################################
tags_pdf_generator                     = "css"
lambda_function_filename_pdf_generator = "./lambda/lambda.zip"           # Reemplaza con el nombre de tu archivo Lambda
index_handler_pdf_generator            = "lambda_handler.lambda_handler" # Reemplaza con el manejador de tu Lambda
runtime_lambda_pdf_generator           = "python3.11"                    # Reemplaza con el runtime de tu Lambda
package_type_lambda_pdf_generator      = "Zip"                           # Tipo de paquete (Zip o Image)
lambda_function_source_pdf_generator   = "./lambda/lambda.zip"           # Ruta al código fuente o imagen
timeout_lambda_pdf_generator           = 61
memory_size_lambda_pdf_generator       = 512

name_lambda_pdf_generator = "lambda-pdf-generator"
environment_variables_pdf_generator = {
  BUCKET_NAME  = "s3-css-certificados-prd"
  CSS_URL      = "https://s3-css-images-assets-store-prd.s3.us-east-1.amazonaws.com/template/certificado.css"
  ENV_REGION   = "us-east-1"
}


################################
# Lmabda layer
################################

layer_zip_path = "./lambda/wkhtmltopdf-layer.zip"
layer_name = "wkhtmltopdf-layer"
layer_description = "Layer con wkhtmltopdf 0.12.6 Amazon Linux 2"
layer_compatible_runtimes = ["python3.11"]
layer_compatible_architectures = ["x86_64"]

#####################
#  bucket s3 Almacenamiento 
####################
bucket_names            = ["s3-css-lambda-deployments", "s3-css-certificados", "s3-css-images-assets-store"]
versioning              = "Enabled"
block_public_acls       = true
block_public_policy     = true
restrict_public_buckets = true
ignore_public_acls      = true


####################################
# Parametros Aurora postgres
###################################

skip_final_snapshot          = "true"
count_instances              = 1
engine_cluster               = "aurora-postgresql"
master_username              = "userpostgres"
port_postgres                = 5432
name_bd_postgres             = "css"
backup_retention_period      = 7
preferred_backup_window      = "02:00-03:00"
preferred_maintenance_window = "sun:03:00-sun:04:00"
apply_immediately            = "true"
instance_class               = "db.t3.medium"
engine_instance              = "aurora-postgresql"
publicly_accessible          = "true"
storage_encrypted            = "true"
ca_cert_identifier           = "rds-ca-rsa2048-g1"
tag_name                     = "css"



##########
# Cognito
#########

user_pool_name     = "css-user-pool"
client_name        = "css-cliente"
identity_pool_name = "css-identity-pool"

callback_urls = [
  "https://css.com/callback"
]

logout_urls = [
  "https://css.com/logout"
]


  auto_verified_attributes             = ["email"]
  alias_attributes                     = ["preferred_username"]

  password_min_length                  = 8
  password_require_upper               = "true"
  password_require_lower               = "true"
  password_require_number              = "true"
  password_require_symbols             = "false"
  temp_password_validity_days          = 7

  mfa_configuration                    = "ON"
  software_token_mfa_enabled           = "true"

  email_sending_account                = "DEVELOPER"
  from_email_address                   = "appcontrasena@fiduprevisora.com.co"
  email_source_arn                     = "arn:aws:ses:us-east-1:282927509129:identity/appcontrasena@fiduprevisora.com.co"
  email_subject                        = "Confirma tu cuenta"
  email_message                        = "Haz clic para confirmar: {##Verify Email##}"
  default_email_option                 = "CONFIRM_WITH_LINK"
  
  advanced_security_mode               = "ENFORCED"
  
    
  recovery_mechanism1_name             = "verified_email"
  recovery_mechanism1_priority         = 1
  recovery_mechanism2_name             = "verified_phone_number"
  recovery_mechanism2_priority         = 2



  generate_secret                      = "false"  
  allowed_oauth_flows_user_pool_client = "true"
  supported_identity_providers         = ["COGNITO"]
  allowed_oauth_scopes                 = ["email", "openid", "profile"]
  allowed_oauth_flows                  = ["code" ] 
  
  
  
  allow_unauth_identities              = "false"
  server_side_token_check              = "true" 
    
  access_token_validity   = 60
  id_token_validity       = 60
  refresh_token_validity  = 30   
  

##############################################
# Cognito movil
##############################################

user_pool_name_movil     = "css-user-pool-movil"
client_name_movil        = "css-cliente-movil"
identity_pool_name_movil = "css-identity-pool-movil"

callback_urls_movil = [
  "https://cssmovil.com/callback"
]

logout_urls_movil = [
  "https://cssmovil.com/logout"
]


  auto_verified_attributes_movil             = ["email"]
  alias_attributes_movil                     = ["preferred_username"]

  password_min_length_movil                  = 8
  password_require_upper_movil              = "true"
  password_require_lower_movil               = "true"
  password_require_number_movil              = "true"
  password_require_symbols_movil             = "false"
  temp_password_validity_days_movil          = 7

  mfa_configuration_movil                    = "ON"
  software_token_mfa_enabled_movil           = "true"

  email_sending_account_movil                = "DEVELOPER"
  from_email_address_movil                   = "julianalvarez@periferia-it.com"
  email_source_arn_movil                     = "arn:aws:ses:us-east-1:282927509129:identity/julianalvarez@periferia-it.com"
  email_subject_movil                        = "Confirma tu cuenta"
  email_message_movil                        = "Haz clic para confirmar: {##Verify Email##}"
  default_email_option_movil                 = "CONFIRM_WITH_LINK"
  
  advanced_security_mode_movil               = "ENFORCED"
  
    
  recovery_mechanism1_name_movil             = "verified_email"
  recovery_mechanism1_priority_movil         = 1
  recovery_mechanism2_name_movil             = "verified_phone_number"
  recovery_mechanism2_priority_movil         = 2

  generate_secret_movil                      = "false"  
  allowed_oauth_flows_user_pool_client_movil = "true"
  supported_identity_providers_movil         = ["COGNITO"]
  allowed_oauth_scopes_movil                 = ["email", "openid", "profile"]
  allowed_oauth_flows_movil                  = ["code"] 
  
  
  allow_unauth_identities_movil              = "false"
  server_side_token_check_movil              = "true" 
    
  access_token_validity_movil   = 60
  id_token_validity_movil       = 60
  refresh_token_validity_movil  = 30
#token_validity_units_movil = {
#access_token  = "minutes"
#id_token      = "minutes"
#refresh_token = "days"
#}



name_api_http = "apigateway-http"


#####################
#  ecr - ecs
####################

image_tag_mutability = "MUTABLE"

name_ecr                 = "prd/devops_liquibase"
family                   = "liquibase-update"
requires_compatibilities = ["FARGATE"]
network_mode             = "awsvpc"
cpu                      = 256
memory                   = 512
execution_role_arn       = "arn:aws:iam::282927509129:role/ecs-execution-role"
task_role_arn            = "arn:aws:iam::282927509129:role/ecs-task-role"

tags = {
  Environment = "prd"
  Project     = "Clienteprd"
}


name_cluster_ecs = "devops-liquibase"
###############
# SNS
#############
topic_name = "sns-topic-error"

#################
# Liquibase
################

environment_liquibase = "main"

###################################
# WAF
##################################
  web_acl_name                = "waf-apigateway"
  web_acl_description         = "WAF for API Gateway"
  scope_acl                  = "REGIONAL"
  amazon_ip_reputation_list   = "AWSManagedRulesAmazonIpReputationList"
  rule_name_whitelist         = "trusted-ips"
  name_ip_set_permitidas      = "trusted-ips-apigw"
  ip_address_version          = "IPV4"
  ip_set_permitidas           = ["198.51.100.0/24"]
  country_codes               = ["CO"]



  web_acl_name_cf                = "waf-cloudfront"
  web_acl_description_cf         = "WAF for CloudFront"
  scope_acl_cf                  = "CLOUDFRONT"
  amazon_ip_reputation_list_cf   = "AWSManagedRulesAmazonIpReputationList"
  rule_name_whitelist_cf         = "office-whitelist"
  name_ip_set_permitidas_cf      = "office-ips-cloudfront"
  ip_address_version_cf          = "IPV4"
  ip_set_permitidas_cf           = ["203.0.113.0/24"]
  country_codes_cf               = ["CO"]

#----------------------------------------------------
#  Cognito user pool
#------------------------------------------------------
#name_cognito                            = "authorizer_cognito_css"
#name_cognito_client_read                = "authorizer_cognito_client_css_read"
#name_cognito_client_write               = "authorizer_cognito_client_css_write"
#cognito_domain                          = "csslogin"
#cognito_domain_poc                      = "csslogin2"
#email_subject                           = "APP Notification - Account Verification"
#email_message                           = "Please click the link to verify your email address: {##VERIFY EMAIL##}\n<br><br>\n"
#resource_group_name_cognito_read        = "resource_group_cognito_css_read"
#identifier_resource_group_cognito_read  = "invoke"
#scope_name_read                         = "read"
#resource_group_name_cognito_write       = "resource_group_cognito_css_write"
#identifier_resource_group_cognito_write = "invoke"
#scope_description_read                  = "Get access to read API Gateway endpoints."
#scope_name_write                        = "write"
#scope_description_write                 = "Get access to write API Gateway endpoints."
#callback_url_postman_web                = "https://oauth.pstmn.io/v1/browser-callback"
#callback_url_postman_app                = "https://oauth.pstmn.io/v1/callback"
#access_token_validity_write             = 480
#id_token_validity_write                 = 480
#explicit_auth_flows_write               = ["ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
#allowed_oauth_flows_write               = ["code", "implicit"]
#generate_secret_write                   = true
#
#allowed_oauth_flows_read   = ["code", "implicit"]
#explicit_auth_flows_read   = ["ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
#access_token_validity_read = 480
#id_token_validity_read     = 480
#
#
#NameCognitoUserPolicy = "CognitoUserPolicycss"
#NameCognitoRole       = "CognitoRolecss"
#############
#function_name_autenticador = "autenticador"
