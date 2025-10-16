
variable "name_sqs" {}
variable "delay_seconds" {}
variable "max_message_size" {}
variable "message_retention_seconds" {}
variable "receive_wait_time_seconds" {}
variable "environment" {}
variable "function_name" {

}


variable "account" {

}
variable "lambda_execution_role_arn" {
  description = "ARN del rol de ejecución de Lambda"
  type        = string
}

variable "region" {

}

#variable "dead_letter_queue_arn" {
#  description = "El ARN de la Dead Letter Queue (DLQ) para la política de redrive."
#  type        = string
#  default     = "" # Proporciona un valor predeterminado vacío si es opcional
#}