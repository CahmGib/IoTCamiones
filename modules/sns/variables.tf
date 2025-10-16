variable "topic_name" {
  type        = string
  description = "Nombre del SNS topic"
}

variable "lambda_arn" {
  type        = string
  description = "ARN de la función Lambda que se suscribirá al topic"
}

variable "environment" {

}