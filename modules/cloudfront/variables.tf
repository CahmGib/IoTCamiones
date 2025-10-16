
variable "environment" {
  description = "Nombre del ambiente: dev, qas, stg o prd"
  default     = "dev"
}

variable "project" {
  description = "Nombre de la aplicación"
  default     = "rediseno"
}

variable "domain_name" {
  description = "Dominio web de la aplicación"
  default     = "rediseno.com"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}