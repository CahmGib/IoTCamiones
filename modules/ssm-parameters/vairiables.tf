variable "name" {
  description = "Nombre completo del parámetro en SSM (ej: /app/env/key)"
  type        = string
}

variable "description" {
  description = "Descripción del parámetro"
  type        = string
  default     = null
}

variable "type" {
  description = "Tipo de parámetro: String | SecureString | StringList"
  type        = string
  default     = "SecureString"
}

variable "value" {
  description = "Valor del parámetro (puede ser string o JSON heredoc)"
  type        = string
}

variable "tags" {
  description = "Etiquetas aplicadas al parámetro"
  type        = map(string)
  default     = {}
}
