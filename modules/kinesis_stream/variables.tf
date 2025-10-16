variable "name" { type = string }
variable "shard_count" { type = number }
variable "retention_hours" { type = number, default = 24 }
variable "encryption" { type = bool, default = true }
variable "kms_key_id" { type = string, default = "" }