variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The primary key hash attribute name"
  type        = string
}

#variable "range_key" {
#  description = "The primary key range attribute name"
#  type        = string
#  default     = null
#}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = string

}

