
region      = "us-east-1"
environment = "qa"
project     = "css"
account     = "133856113579"
vpc_id      = "vpc-0301fd7bc5f1239a6"
env         = "qa"

api_name = "api"
stage_name = "qa"
####################################
# Lambda content-backend
###################################
#lambda-generacion-topicos
tags_content_backend                     = "css"
lambda_function_filename_content_backend = "./lambda/lambda.zip"    # Reemplaza con el nombre de tu archivo Lambda
lambda_function_name                     = "lambda-content-backend" # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_content_backend          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_content_backend         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_content_backend    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_content_backend = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_content_backend         = 10
memory_size_lambda_content_backend     = 128

name_lambda_content_backend = "lambda-content-backend"
environment_variables_content_backend = {
  ENV_REGION = "us-east-1"

}


####################################
# Lambda param-config
###################################
#lambda-generacion-topicos
tags_param_config                     = "css"
lambda_function_filename_param_config = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name             = "lambda-param-config"      # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_param_config          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_param_config         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_param_config    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_param_config = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_param_config         = 10
memory_size_lambda_param_config     = 128

name_lambda_param_config = "lambda-param-config"
environment_variables_param_config = {
  ENV_REGION = "us-east-1"
}


####################################
# Lambda survey-backend
###################################
#lambda-generacion-topicos
tags_survey_backend                     = "css"
lambda_function_filename_survey_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name             = "lambda-param-config"      # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_survey_backend          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_survey_backend         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_survey_backend    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_survey_backend = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_survey_backend         = 10
memory_size_lambda_survey_backend     = 128

name_lambda_survey_backend = "lambda-survey-backend"
environment_variables_survey_backend = {
  ENV_REGION = "us-east-1"
  mi         = "prueba"
}

####################################
# Lambda certification-backend
###################################
#lambda-generacion-topicos
tags_certification_backend                     = "css"
lambda_function_filename_certification_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name             = "lambda-param-config"      # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_certification_backend          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_certification_backend         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_certification_backend    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_certification_backend = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_certification_backend         = 10
memory_size_lambda_certification_backend     = 128

name_lambda_certification_backend = "lambda-certification-backend"
environment_variables_certification_backend = {
  ENV_REGION = "us-east-1"
}


####################################
# Lambda pqrs-backend
###################################
#lambda-generacion-topicos
tags_pqrs_backend                     = "css"
lambda_function_filename_pqrs_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name             = "lambda-param-config"      # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_pqrs_backend          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_pqrs_backend         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_pqrs_backend    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_pqrs_backend = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_pqrs_backend         = 10
memory_size_lambda_pqrs_backend     = 128

name_lambda_pqrs_backend = "lambda-pqrs-backend"
#  environment_variables_content_content = {
#    
#  }

####################################
# Lambda audit-backend
###################################
#lambda-generacion-topicos
tags_audit_backend                     = "css"
lambda_function_filename_audit_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name             = "lambda-param-config"      # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_audit_backend          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_audit_backend         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_audit_backend    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_audit_backend = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_audit_backend         = 10
memory_size_lambda_audit_backend     = 128

name_lambda_audit_backend = "lambda-audit-backend"
#  environment_variables_content_content = {
#    
#  }

####################################
# Lambda analitycs-backend
###################################
#lambda-generacion-topicos
tags_analitycs_backend                     = "css"
lambda_function_filename_analitycs_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name             = "lambda-param-config"      # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_analitycs_backend          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_analitycs_backend         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_analitycs_backend    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_analitycs_backend = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_analitycs_backend         = 10
memory_size_lambda_analitycs_backend     = 128

name_lambda_analitycs_backend = "lambda-analitycs-backend"
#  environment_variables_content_content = {
#    
#  }


####################################
# Lambda system-backend
###################################
#lambda-generacion-topicos
tags_system_backend                     = "css"
lambda_function_filename_system_backend = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name             = "lambda-param-config"      # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_system_backend          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_system_backend         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_system_backend    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_system_backend = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_system_backend         = 10
memory_size_lambda_system_backend     = 128

name_lambda_system_backend = "lambda-system-backend"
#  environment_variables_content_content = {
#    
#  }

####################################
# Lambda auth-user
###################################
#lambda-generacion-topicos
tags_auth_user                     = "css"
lambda_function_filename_auth_user = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name                     = "lambda-auth-user" # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_auth_user          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_auth_user         = "provided.al2023"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_auth_user    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_auth_user = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_auth_user         = 10
memory_size_lambda_auth_user     = 128

name_lambda_auth_user = "lambda-auth-user"
environment_variables_auth_user = {
  CLIENT_SECRET        = "l8lm3h75hclc4cplausad0ke8445ch2rgbemgn4gr8rg04gi839"
  COGNITO_CLIENT_ID    = "2i8f9udqus1plea43e9lf9563c"
  COGNITO_USER_POOL_ID = "us-east-1_U3BQQbqZ9"
  ENV_REGION           = "us-east-1"
}

####################################
# Lambda webauthuser
###################################
#lambda-generacion-topicos
tags_webauthuser                     = "css"
lambda_function_filename_webauthuser = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name                     = "lambda-auth-user" # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_webauthuser          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_webauthuser         = "python3.11"          # Reemplaza con el runtime de tu Lambda
package_type_lambda_webauthuser    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_webauthuser = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_webauthuser         = 10
memory_size_lambda_webauthuser     = 128

name_lambda_webauthuser = "lambda-webauthuser"
environment_variables_webauthuser = {
  CLIENT_SECRET        = "l8lm3h75hclc4cplausad0ke8445ch2rgbemgn4gr8rg04gi839"
  COGNITO_CLIENT_ID    = "2i8f9udqus1plea43e9lf9563c"
  COGNITO_USER_POOL_ID = "us-east-1_U3BQQbqZ9"
  ENV_REGION           = "us-east-1"
}

####################################
# Lambda images
###################################
#lambda-generacion-topicos
tags_images                     = "css"
lambda_function_filename_images = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name                     = "lambda-auth-user" # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_images          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_images         = "python3.11"          # Reemplaza con el runtime de tu Lambda
package_type_lambda_images    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_images = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_images         = 10
memory_size_lambda_images     = 128

name_lambda_images = "lambda-images"
environment_variables_images = {
  CLIENT_SECRET        = "l8lm3h75hclc4cplausad0ke8445ch2rgbemgn4gr8rg04gi839"
  COGNITO_CLIENT_ID    = "2i8f9udqus1plea43e9lf9563c"
  COGNITO_USER_POOL_ID = "us-east-1_U3BQQbqZ9"
  ENV_REGION           = "us-east-1"
}

####################################
# Lambda errors
###################################
#lambda-generacion-topicos
tags_errors                     = "css"
lambda_function_filename_errors = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name                     = "lambda-auth-user" # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_errors          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_errors         = "python3.11"          # Reemplaza con el runtime de tu Lambda
package_type_lambda_errors    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_errors = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_errors         = 10
memory_size_lambda_errors     = 128

name_lambda_errors = "lambda-errors"
environment_variables_errors = {
  CLIENT_SECRET        = "l8lm3h75hclc4cplausad0ke8445ch2rgbemgn4gr8rg04gi839"
  COGNITO_CLIENT_ID    = "2i8f9udqus1plea43e9lf9563c"
  COGNITO_USER_POOL_ID = "us-east-1_U3BQQbqZ9"
  ENV_REGION           = "us-east-1"
}

####################################
# Lambda errors
###################################
#lambda-generacion-topicos
tags_pdf_generator                     = "css"
lambda_function_filename_pdf_generator = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
#lambda_function_name                     = "lambda-auth-user" # Reemplaza con el nombre de tu función Lambda
#aws_iam_role_arn         = aws_iam_role.lambda_execution_role.arn # Reemplaza con el ARN de tu IAM Role
index_handler_pdf_generator          = "index.handler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_pdf_generator         = "python3.11"          # Reemplaza con el runtime de tu Lambda
package_type_lambda_pdf_generator    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_pdf_generator = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_pdf_generator         = 10
memory_size_lambda_pdf_generator     = 128

name_lambda_pdf_generator = "lambda-pdf-generator"
environment_variables_pdf_generator = {
  CLIENT_SECRET        = "l8lm3h75hclc4cplausad0ke8445ch2rgbemgn4gr8rg04gi839"
  COGNITO_CLIENT_ID    = "2i8f9udqus1plea43e9lf9563c"
  COGNITO_USER_POOL_ID = "us-east-1_U3BQQbqZ9"
  ENV_REGION           = "us-east-1"
}


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


########################

#lambda_function_name_amazon = "lambda-auth-user"
#handler_class               = "com.cliente.Handler::handleRequest"
#runtime_amazon              = "provided.al2023"
#lambda_zip_path             = ""
#
#lambda_function_name_amazon_content_backend = "lambda-auth-content-backend"
#handler_class_content_backend               = "com.cliente.Handler::handleRequest"
#runtime_amazon_content_backend              = "provided.al2023"

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


##########
# Cognito movil
#########

user_pool_name_movil     = "css-user-pool-movil"
client_name_movil        = "css-cliente-movil"
identity_pool_name_movil = "css-identity-pool-movil"

callback_urls_movil = [
  "https://cssmovil.com/callback"
]

logout_urls_movil = [
  "https://cssmovil.com/logout"
]


###  apigateway http

name_api_http = "apigateway"


#####################
#  ecr - ecs
####################

image_tag_mutability = "MUTABLE"

name_ecr                 = "qa/devops_liquibase"
family                   = "liquibase-update"
requires_compatibilities = ["FARGATE"]
network_mode             = "awsvpc"
cpu                      = 256
memory                   = 512
execution_role_arn       = "arn:aws:iam::133856113579:role/ecs-execution-role"
task_role_arn            = "arn:aws:iam::133856113579:role/ecs-execution-role"

tags = {
  Environment = "qa"
  Project     = "Clienteqa"
}


name_cluster_ecs = "devops-liquibase"

###############
# SNS
#############
topic_name = "sns-topic-error"

#################
# Liquibase
################

environment_liquibase = "quality"


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