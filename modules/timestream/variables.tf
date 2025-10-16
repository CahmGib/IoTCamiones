variable "database_name" { type = string }
variable "table_name" { type = string }
variable "memory_retention_hours" { type = number, default = 24 }
variable "magnetic_retention_days" { type = number, default = 365 }