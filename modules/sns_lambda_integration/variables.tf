# modules/sns_lambda_integration/variables.tf

variable "sns_topic_name" {
  type        = string
  description = "Nombre del tema SNS"
}

variable "sqs_s3_arn" {
  type        = map(string)
  description = "ARN de la función Lambda que se suscribirá al tema SNS"
}

variable "lambda_function_name" {
  type        = string
  description = "Nombre de la función Lambda"
}
variable "environment" {

}