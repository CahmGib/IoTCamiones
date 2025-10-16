

variable "lambda_function_filename" {

}
variable "environment" {

}
variable "lambda_function_name" {

}
variable "aws_iam_role_arn" {

}
variable "index_handler" {

}

variable "runtime" {

}

variable "package_type_lambda" {

}

variable "lambda_function_source" {

}

variable "tags" {

}
variable "environment_variables" {
  type        = map(string)
  description = "Environment variables for the Lambda function"
  default     = {}
}

variable "timeout_lambda" {

}
variable "memory_size_lambda" {

}


variable "lambda_source_arn" {
  
}
variable "lambda_layers" {
  type    = list(string)
  default = []
}

variable "vpc_id" {
  
}

variable "env" {
  
}