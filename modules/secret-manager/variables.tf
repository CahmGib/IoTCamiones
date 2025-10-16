variable "secrets" {
  description = "Lista de secretos a crear en AWS Secrets Manager"
  type = list(object({
    name          = string
    description   = string
    secret_string = string
    tags          = map(string)
  }))
}
