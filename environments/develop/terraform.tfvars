
region      = "us-east-1"
environment = "dev"
project     = "css"
account     = "282927509129"
vpc_id      = "vpc-0d47c50803be7615d"
env         = "dev"

api_name = "api"
stage_name = "dev"



####################################
# Lambda gestionusuarios
###################################

tags_gestionusuarios                     = "css"
lambda_function_filename_gestionusuarios = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_gestionusuarios          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_gestionusuarios         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_gestionusuarios    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_gestionusuarios = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_gestionusuarios         = 30
memory_size_lambda_gestionusuarios     = 512

name_lambda_gestionusuarios = "gestionusuarios"
environment_variables_gestionusuarios = {
  ENV_REGION  = "us-east-1"
  DB_HOST     = "/css/dev/aurora/dbw.uri"
  DB_NAME     = "/css/dev/aurora/dbw.name"
  DB_PASSWORD = "/css/dev/aurora/dbw.password"
  DB_PORT     = "/css/dev/aurora/dbw.port"
  DB_USER     = "/css/dev/aurora/dbw.user"

}

####################################
# Lambda listarfactura
###################################

tags_listarfactura                     = "css"
lambda_function_filename_listarfactura = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_listarfactura          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_listarfactura         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_listarfactura    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_listarfactura = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_listarfactura         = 30
memory_size_lambda_listarfactura     = 512

name_lambda_listarfactura = "listarfactura"
environment_variables_listarfactura = {
  ENV_REGION = "us-east-1"
}





####################################
# Lambda generarfactura
###################################

tags_generarfactura                     = "css"
lambda_function_filename_generarfactura = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_generarfactura          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_generarfactura         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_generarfactura    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_generarfactura = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_generarfactura         = 30
memory_size_lambda_generarfactura     = 512

name_lambda_generarfactura = "generarfactura"
#  environment_variables_modify_modify = {
#    
#  }

####################################
# Lambda pagofactura
###################################

tags_pagofactura                     = "css"
lambda_function_filename_pagofactura = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_pagofactura          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_pagofactura         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_pagofactura    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_pagofactura = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_pagofactura         = 30
memory_size_lambda_pagofactura     = 512

name_lambda_pagofactura = "pagofactura"
#  environment_variables_modify_modify = {
#    
#  }

####################################
# Lambda reporteconsultas
###################################

tags_reporteconsultas                     = "css"
lambda_function_filename_reporteconsultas = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_reporteconsultas          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_reporteconsultas         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_reporteconsultas    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_reporteconsultas = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_reporteconsultas         = 30
memory_size_lambda_reporteconsultas     = 512

name_lambda_reporteconsultas = "reporteconsultas"
environment_variables_modify_modify = {
  DB_HOST     = "/css/dev/aurora/dbw.uri"
  DB_NAME     = "/css/dev/aurora/dbw.name"
  DB_PASSWORD = "/css/dev/aurora/dbw.password"
  DB_PORT     = "/css/dev/aurora/dbw.port"
  DB_USER     = "/css/dev/aurora/dbw.user"
  ENV_REGION  = "us-east-1"
}


####################################
# Lambda aprobacionventa
###################################

tags_aprobacionventa                     = "css"
lambda_function_filename_aprobacionventa = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_aprobacionventa          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_aprobacionventa         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_aprobacionventa    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_aprobacionventa = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_aprobacionventa         = 30
memory_size_lambda_aprobacionventa     = 512

name_lambda_aprobacionventa = "aprobacionventa"
#  environment_variables_modify_modify = {
#    
#  }

####################################
# Lambda gestionalertas
###################################

tags_gestionalertas                     = "css"
lambda_function_filename_gestionalertas = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_gestionalertas          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_gestionalertas         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_gestionalertas    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_gestionalertas = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_gestionalertas         = 30
memory_size_lambda_gestionalertas     = 512

name_lambda_gestionalertas = "gestionalertas"
environment_variables_gestionalertas = {

  DB_HOST              = "/css/dev/aurora/dbw.uri"
  DB_NAME              = "/css/dev/aurora/dbw.name"
  DB_PASSWORD          = "/css/dev/aurora/dbw.password"
  DB_PORT              = "/css/dev/aurora/dbw.port"
  DB_USER              = "/css/dev/aurora/dbw.user"
  
  ENV_REGION           = "us-east-1"
}



####################################
# Lambda iniciarventa
###################################

tags_iniciarventa                     = "css"
lambda_function_filename_iniciarventa = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_iniciarventa          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_iniciarventa         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_iniciarventa    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_iniciarventa = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_iniciarventa         = 30
memory_size_lambda_iniciarventa     = 512

name_lambda_iniciarventa = "iniciarventa"
environment_variables_iniciarventa = {

  DB_HOST              = "/css/dev/aurora/dbw.uri"
  DB_NAME              = "/css/dev/aurora/dbw.name"
  DB_PASSWORD          = "/css/dev/aurora/dbw.password"
  DB_PORT              = "/css/dev/aurora/dbw.port"
  DB_USER              = "/css/dev/aurora/dbw.user"
  
  ENV_REGION           = "us-east-1"
}


####################################
# Lambda gestionflotas
###################################

tags_gestionflotas                     = "css"
lambda_function_filename_gestionflotas = "./lambda/lambda.zip" # Reemplaza con el nombre de tu archivo Lambda
index_handler_gestionflotas          = "com.css.StreamLambdaHandler"       # Reemplaza con el manejador de tu Lambda
runtime_lambda_gestionflotas         = "java21"     # Reemplaza con el runtime de tu Lambda
package_type_lambda_gestionflotas    = "Zip"                 # Tipo de paquete (Zip o Image)
lambda_function_source_gestionflotas = "./lambda/lambda.zip" # Ruta al código fuente o imagen
timeout_lambda_gestionflotas         = 30
memory_size_lambda_gestionflotas     = 512

name_lambda_gestionflotas = "gestionflotas"
environment_variables_gestionflotas = {

  DB_HOST              = "/css/dev/aurora/dbw.uri"
  DB_NAME              = "/css/dev/aurora/dbw.name"
  DB_PASSWORD          = "/css/dev/aurora/dbw.password"
  DB_PORT              = "/css/dev/aurora/dbw.port"
  DB_USER              = "/css/dev/aurora/dbw.user"
  
  ENV_REGION           = "us-east-1"
}


###################
# sqs pain001
###################
name_sqs = "sqs-pain001"
delay_seconds = 30
max_message_size = 1024
message_retention_seconds = 60
receive_wait_time_seconds = 10
function_name_sqspain002 = "SpbviLambdaJavaPain002BU-dev"
lambda_execution_role_arn = "lambda_execution_role_pain002-dev"


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

name_api_http = "apigateway-http"


###############
# SNS
#############
sns_topic_name = "sns-topic-error"



#----------------------------------------------------
#----------------------------------------------------
#  Cognito user pool
#  Cognito user pool
#------------------------------------------------------
#------------------------------------------------------
name_cognito                            = "authorizer_cognito_css"
name_cognito                            = "authorizer_cognito_css"
name_cognito_client_read                = "authorizer_cognito_client_css_read"
name_cognito_client_read                = "authorizer_cognito_client_css_read"
name_cognito_client_write               = "authorizer_cognito_client_css_write"
name_cognito_client_write               = "authorizer_cognito_client_css_write"
cognito_domain                          = "csslogin"
cognito_domain                          = "csslogin"
cognito_domain_poc                      = "csslogin2"
cognito_domain_poc                      = "csslogin2"
email_subject                           = "APP Notification - Account Verification"
email_message                           = "Please click the link to verify your email address: {##VERIFY EMAIL##}\n<br><br>\n"
resource_group_name_cognito_read        = "resource_group_cognito_css_read"
identifier_resource_group_cognito_read  = "invoke"
scope_name_read                         = "read"
resource_group_name_cognito_write       = "resource_group_cognito_css_write"
identifier_resource_group_cognito_write = "invoke"
scope_description_read                  = "Get access to read API Gateway endpoints."
scope_name_write                        = "write"
scope_description_write                 = "Get access to write API Gateway endpoints."
callback_url_postman_web                = "https://oauth.pstmn.io/v1/browser-callback"
callback_url_postman_app                = "https://oauth.pstmn.io/v1/callback"
id_token_validity_write                 = 480
explicit_auth_flows_write               = ["ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
allowed_oauth_flows_write               = ["code", "implicit"]
generate_secret_write                   = true

allowed_oauth_flows_read   = ["code", "implicit"]
explicit_auth_flows_read   = ["ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
access_token_validity_read = 480
id_token_validity_read     = 480


NameCognitoUserPolicy = "CognitoUserPolicycss"
NameCognitoRole       = "CognitoRolecss"
#############
function_name_autenticador = "autenticador"

####
# Secret manager
####


secrets = [

  {
    name          = "apikey"
    description   = "Llave secreta para firmar JWT"
    secret_string = "apikey"
    tags          = { "env" = "dev", "app" = "auth" }
  },
    {
    name          = "secret"
    description   = "Llave secreta para firmar JWT"
    secret_string = "zg!OsfDgX0lXoi"
    tags          = { "env" = "dev", "app" = "auth" }
  }
]

##################




urlRed_json = <<EOT
{
    "urlOauth" : "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/oauth2.0/oauth2/token",
    "urlEnrollment" : "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/api/dir/v3.0.0/Directory/key",
    "urlUpdateKey" : "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/api/dir/v3.0.0/Directory/key/%7BID%7D" ,
    "urlUpdateAccount" : "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/api/dir/v3.0.0/Directory/keyType/%7BkeyType%7D/key/%7BkeyValue%7D" ,
    "urlChangeStatus" : "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/api/dir/v3.0.0/Directory/keyType/%7BkeyType%7D/key/%7BkeyValue%7D",
    "urllistarfacturaKey" : "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/api/dir/v3.0.0/Directory/key/%7BkeyValue%7D" ,
    "urllistarfacturaDocument" : "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/api/dir/v3.0.0/Directory/DocumentType/%7BDocumentType%7D/identification/%7BID%7D",
    "urlTimeStamps": "https://gateway.qa.sandboxhubredeban.com/rbmcalidad/calidad/api/dir/v3.0.0/TimeStamps/Directory"
}
EOT

general_config_json = <<EOT
{
"arnSecretManager" :  "solicitar",
"urlAurora" : "solicitar",
"urlApiGateway":"solicitar"
"driverAurora" : "solicitar",
"region": "us-east-1"
}
EOT

#################################
#
#################################

client               = "css"
glue_script_location = "s3://css-glue-scripts/job.py"
eventbridge_role_arn = "arn:aws:iam::282927509129:role/EventBridgeInvokeGlueRole"




db_username     = "userpostgres"

db_password     = "zg!OsfDgX0lXoiN8"

az              = "us.east-1a"
aurora_endpoint = "dev-aurora-cluster.cluster-ckvoouuyqkw7.us-east-1.rds.amazonaws.com"
aurora_db       = "postgres"
aurora_port     = 5432


##################################
# DynamoDB
##################################


############################
# Dybanodb
############################
dynamodb_table_name = "css-iot"
dynamodb_billing_mode = "PAY_PER_REQUEST"



dynamodb_hash_key = "css"

tags_dynamo = "css"


##############################
#   KDS
##############################
# Nombre del flujo Kinesis
name_kds = "ccs-telemetry-stream"

# Número de shards (cada shard puede manejar hasta 1 MB/s de entrada o 1000 registros por segundo)
shard_count = 5

# Periodo de retención de los datos en horas (por defecto Kinesis permite entre 24 y 8760)
retention_hours = 24

# Activar o no cifrado con KMS
encryption = true

# ID de la clave KMS usada para cifrar los datos del stream
# Puedes usar una KMS propia o la por defecto de AWS
kms_key_id = "arn:aws:kms:us-east-1:123456789012:key/abcd1234-56ef-78gh-90ij-klmnopqrstuv"

# Etiquetas para identificar el recurso
tags = {
  Environment = "prod"
  Project     = "ccs-tracking"
  Owner       = "cloud-architecture"
}



##############################
#   KVS
##############################
# Nombre del stream de video
name_kvs = "ccs-video-stream"

# Horas de retención de los fragmentos de video en el stream (mínimo 1, máximo 87600)
data_retention_in_hours = 48

# Tipo de media enviada por los dispositivos IoT o cámaras
# Normalmente "video/h264" o "video/h265"
media_type = "video/h264"

# Etiquetas para gestión y trazabilidad
tags_kvs = {
  Environment = "prod"
  Project     = "ccs-tracking"
  Owner       = "cloud-architecture"
}



##############################
#   Timestream
##############################

# Nombre de la base de datos Timestream
database_name = "ccs_telem_db"

# Nombre de la tabla donde se almacenan los registros de telemetría IoT
table_name = "vehicle_telemetry"

# Periodo de retención en memoria (en horas)
# Datos de consulta rápida y reciente (por ejemplo, últimas 24 horas)
memory_retention_hours = 24

# Periodo de retención en almacenamiento magnético (en días)
# Datos históricos para análisis o auditoría
magnetic_retention_days = 365

# Etiquetas de identificación y trazabilidad
tags_timestream = {
  Environment = "prod"
  Project     = "ccs-tracking"
  Owner       = "cloud-architecture"
}
