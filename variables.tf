variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}
variable "stage_name" {
  description = "The stage name for the API Gateway"
  type        = string
}

variable "env" {
  type = string

}

variable "environment" {

}
variable "region" {

}

variable "account" {

}
variable "project" {

}


##############
# Lambda gestionusuarios
##############

variable "name_lambda_gestionusuarios" {

}

variable "lambda_function_filename_gestionusuarios" {

}


#variable "aws_iam_role_arn_gestionusuarios" {
#  
#}
variable "index_handler_gestionusuarios" {

}

variable "runtime_lambda_gestionusuarios" {

}

variable "package_type_lambda_gestionusuarios" {

}

variable "lambda_function_source_gestionusuarios" {

}

variable "tags_gestionusuarios" {

}
variable "environment_variables_gestionusuarios" {
  type        = map(string)
  description = "Environment variables for the Lambda function"
  default     = {}
}

variable "timeout_lambda_gestionusuarios" {

}
variable "memory_size_lambda_gestionusuarios" {

}

##############
# Lambda listarfactura
##############

variable "name_lambda_listarfactura" {

}

variable "lambda_function_filename_listarfactura" {

}

#variable "aws_iam_role_arn_listarfactura" {
#  
#}
variable "index_handler_listarfactura" {

}

variable "runtime_lambda_listarfactura" {

}

variable "package_type_lambda_listarfactura" {

}

variable "lambda_function_source_listarfactura" {

}

variable "tags_listarfactura" {

}


variable "timeout_lambda_listarfactura" {

}
variable "memory_size_lambda_listarfactura" {

}
variable "environment_variables_listarfactura" {
  type        = map(string)
  description = "Environment variables for the Lambda function"
  default     = {}
}


##############
# Lambda reporteconsultas
##############

variable "name_lambda_reporteconsultas" {

}

variable "lambda_function_filename_reporteconsultas" {

}
variable "index_handler_reporteconsultas" {

}

variable "runtime_lambda_reporteconsultas" {

}

variable "package_type_lambda_reporteconsultas" {

}

variable "lambda_function_source_reporteconsultas" {

}

variable "tags_reporteconsultas" {

}


variable "timeout_lambda_reporteconsultas" {

}
variable "memory_size_lambda_reporteconsultas" {

}


##############
# Lambda aprobacionventa
##############

variable "name_lambda_aprobacionventa" {

}

variable "lambda_function_filename_aprobacionventa" {

}
variable "index_handler_aprobacionventa" {

}

variable "runtime_lambda_aprobacionventa" {

}

variable "package_type_lambda_aprobacionventa" {

}

variable "lambda_function_source_aprobacionventa" {

}

variable "tags_aprobacionventa" {

}


variable "timeout_lambda_aprobacionventa" {

}
variable "memory_size_lambda_aprobacionventa" {

}



##############
# Lambda generarfactura
##############

variable "name_lambda_generarfactura" {

}

variable "lambda_function_filename_generarfactura" {

}
variable "index_handler_generarfactura" {

}

variable "runtime_lambda_generarfactura" {

}

variable "package_type_lambda_generarfactura" {

}

variable "lambda_function_source_generarfactura" {

}

variable "tags_generarfactura" {

}


variable "timeout_lambda_generarfactura" {

}
variable "memory_size_lambda_generarfactura" {

}



##############
# Lambda pagofactura
##############

variable "name_lambda_pagofactura" {

}

variable "lambda_function_filename_pagofactura" {

}
variable "index_handler_pagofactura" {

}

variable "runtime_lambda_pagofactura" {

}

variable "package_type_lambda_pagofactura" {

}

variable "lambda_function_source_pagofactura" {

}

variable "tags_pagofactura" {

}


variable "timeout_lambda_pagofactura" {

}
variable "memory_size_lambda_pagofactura" {

}

##############
# Lambda gestionalertas
##############

variable "name_lambda_gestionalertas" {

}

variable "lambda_function_filename_gestionalertas" {

}

#variable "lambda_function_name" {
#
#}
#variable "aws_iam_role_arn_gestionalertas" {
#  
#}
variable "index_handler_gestionalertas" {

}

variable "runtime_lambda_gestionalertas" {

}

variable "package_type_lambda_gestionalertas" {

}

variable "lambda_function_source_gestionalertas" {

}

variable "tags_gestionalertas" {

}
variable "environment_variables_gestionalertas" {
  type        = map(string)
  description = "Environment variables for the Lambda function"
  default     = {}
}

variable "timeout_lambda_gestionalertas" {

}
variable "memory_size_lambda_gestionalertas" {

}




##############
# Lambda iniciarventa
##############

variable "name_lambda_iniciarventa" {

}

variable "lambda_function_filename_iniciarventa" {

}

#variable "lambda_function_name" {
#
#}
#variable "aws_iam_role_arn_iniciarventa" {
#  
#}
variable "index_handler_iniciarventa" {

}

variable "runtime_lambda_iniciarventa" {

}

variable "package_type_lambda_iniciarventa" {

}

variable "lambda_function_source_iniciarventa" {

}

variable "tags_iniciarventa" {

}
variable "environment_variables_iniciarventa" {
  type        = map(string)
  description = "Environment variables for the Lambda function"
  default     = {}
}

variable "timeout_lambda_iniciarventa" {

}
variable "memory_size_lambda_iniciarventa" {

}

#variable "lambda_source_arn_iniciarventa" {
#  
#}




##############
# Lambda gestionflotas
##############

variable "name_lambda_gestionflotas" {

}

variable "lambda_function_filename_gestionflotas" {

}

#variable "lambda_function_name" {
#
#}
#variable "aws_iam_role_arn_gestionflotas" {
#  
#}
variable "index_handler_gestionflotas" {

}

variable "runtime_lambda_gestionflotas" {

}

variable "package_type_lambda_gestionflotas" {

}

variable "lambda_function_source_gestionflotas" {

}

variable "tags_gestionflotas" {

}
variable "environment_variables_gestionflotas" {
  type        = map(string)
  description = "Environment variables for the Lambda function"
  default     = {}
}

variable "timeout_lambda_gestionflotas" {

}
variable "memory_size_lambda_gestionflotas" {

}

#variable "lambda_source_arn_gestionflotas" {
#  
#}

######################################
# sqs 
######################################

variable "name_sqs" {}
variable "delay_seconds" {}
variable "max_message_size" {}
variable "message_retention_seconds" {}
variable "receive_wait_time_seconds" {}

variable "function_name_sqspain002" {

}

variable "lambda_execution_role_arn" {
  description = "ARN del rol de ejecución de Lambda"
  type        = string
}

###################
# S3 WEB INTEGRA CON CLOUDFRONT
###################



variable "bucket_names" {
  type = list(string)
  # Lista de nombres de buckets
}

variable "versioning" {

}
variable "block_public_acls" {

}

variable "block_public_policy" {

}

variable "restrict_public_buckets" {

}

variable "ignore_public_acls" {

}


###################
# Aurora postgresql
###################

variable "security_groups" {
  type        = list(string)
  description = "Listado de identificador de grupos de seguridad"
  default     = null
}


variable "tag_name" {
  type        = string
  description = "Etiqueta de nombre"
}
/*
variable "master_password" {
  type        = string
  description = "contraseña generada de manera ramdom"
}

variable "random_password" {
  
}*/
variable "master_username" {

}

variable "port_postgres" {

}
variable "name_bd_postgres" {

}

variable "skip_final_snapshot" {

}


variable "count_instances" {

}
variable "engine_cluster" {

}

variable "backup_retention_period" {

}
variable "preferred_backup_window" {

}
variable "preferred_maintenance_window" {

}
variable "apply_immediately" {

}
variable "instance_class" {

}
variable "engine_instance" {

}
variable "publicly_accessible" {

}
variable "storage_encrypted" {

}

variable "vpc_id" {

}
variable "ca_cert_identifier" {

}

#########################################################


variable "secrets" {
  description = "Lista de secretos a crear en AWS Secrets Manager"
  type = list(object({
    name          = string
    description   = string
    secret_string = string
    tags          = map(string)
  }))
}

#############################################




variable "urlRed_json" {
  description = "JSON con las URLs Redeban"
  type        = string
}

variable "general_config_json" {
  description = "JSON con configuraciones generales"
  type        = string
}

#####################
# glue
####################

variable "client" {
  type = string
}

#variable "glue_job_arn" {
#  type = string
#}


variable "glue_script_location" {
  type        = string
  description = "S3 path to the Glue job script"
}
variable "eventbridge_role_arn" {
  description = "ARN del rol de IAM para que EventBridge ejecute el Glue Job"
  type        = string
}




variable "db_username" {
  
}

variable "db_password" {
  
}
variable "az" {
  
}
variable "aurora_endpoint" {
  
}
variable "aurora_port" {
  
}
variable "aurora_db" {
  
}


############################
# Dybanodb
############################
variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "dynamodb_billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}



variable "dynamodb_hash_key" {
  description = "The primary key hash attribute name"
  type        = string
}



variable "tags_dynamo" {
  description = "A map of tags to assign to the resource"
  type        = string

}

###########################
# KDS
###########################
variable "name" { type = string }
variable "shard_count" { type = number }
variable "retention_hours" { type = number, default = 24 }
variable "encryption" { type = bool, default = true }
variable "kms_key_id" { type = string, default = "" }

###########################
# KVS
###########################

variable "name" { type = string }
variable "retention_hours" { type = number, default = 72 }
variable "media_type" { type = string, default = "video/h264" }


#########################
# eventbridge
#########################

