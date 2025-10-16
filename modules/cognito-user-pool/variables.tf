variable "name_cognito" {


}
variable "name_cognito_client_read" {

}

variable "name_cognito_client_write" {

}
variable "cognito_domain" {

}
variable "email_subject" {

}
variable "email_message" {

}
variable "resource_group_name_cognito_read" {

}
variable "identifier_resource_group_cognito_read" {

}

variable "resource_group_name_cognito_write" {

}
variable "identifier_resource_group_cognito_write" {

}

variable "scope_name_read" {

}
variable "scope_description_read" {

}
variable "scope_name_write" {

}
variable "scope_description_write" {

}
variable "callback_url_postman_web" {

}
variable "callback_url_postman_app" {

}
variable "environment" {

}
variable "project" {

}
variable "explicit_auth_flows_write" {

  type = list(string)
}
variable "allowed_oauth_flows_write" {
  type = list(string)
}

variable "name_function_autenticador" {

}

variable "account" {

}

variable "generate_secret_write" {

}

variable "access_token_validity_write" {

}

variable "id_token_validity_write" {

}

### cognito "aws_cognito_user_pool_client" "client_write"
variable "allowed_oauth_flows_read" {

}
variable "explicit_auth_flows_read" {

}
variable "access_token_validity_read" {

}
variable "id_token_validity_read" {

}
