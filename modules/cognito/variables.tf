variable "user_pool_name"  { 
  type = string 
  }
variable "client_name"     { 
  type = string 
  }
variable "identity_pool_name"  { 
  type = string 
  }
variable "environment"     { 
  type = string 
  }
variable "sns_caller_arn"   { 
  type = string 
  }
variable "account"    { 
  type = string 
  }

variable "auto_verified_attributes"  { 
  type = list(string)
  }
variable "alias_attributes"   { 
  type = list(string)
  }

variable "password_min_length"  { 
  type = number
  }
variable "password_require_upper"    {
   type = bool 
   }
variable "password_require_lower"    { 
  type = bool 
  }

variable "password_require_number" {
   type = bool 
   }
variable "password_require_symbols"  {
   type = bool
   }
variable "temp_password_validity_days" { 
  type = number
}

variable "mfa_configuration"         { type = string }
variable "software_token_mfa_enabled"{ type = bool }

variable "email_sending_account"     { type = string}
variable "from_email_address"        { type = string }
variable "email_source_arn"          { type = string }
variable "email_subject"             { type = string }
variable "email_message"             { type = string }
variable "default_email_option"      { type = string }

variable "advanced_security_mode"    { type = string }

variable "recovery_mechanism1_name"     { type = string }
variable "recovery_mechanism1_priority" { type = number}
variable "recovery_mechanism2_name"     { type = string}
variable "recovery_mechanism2_priority" { type = number }

#variable "custom_attributes" {
#  type = list(object({
#    name        = string
#    type        = string
#    mutable     = bool
#    required    = bool
#    min_length  = string
#    max_length  = string
#  }))
#  default = []
#}

variable "generate_secret"                       { type = bool }
variable "allowed_oauth_flows_user_pool_client"{ type = bool }
variable "supported_identity_providers"         { type = list(string) }
variable "allowed_oauth_scopes"                 { type = list(string) }
variable "allowed_oauth_flows"                  { type = list(string) }

variable "callback_urls"                        { type = list(string) }
variable "logout_urls"                          { type = list(string) }

variable "allow_unauth_identities"             { type = bool }
variable "server_side_token_check"             { type = bool }

variable "access_token_validity" {
  description = "Access token expiration time in minutes"
  type        = number
  
}

variable "id_token_validity" {
  description = "ID token expiration time in minutes"
  type        = number
  
}

variable "refresh_token_validity" {
  description = "Refresh token expiration time in days"
  type        = number
  
}

#variable "token_validity_units" {
#  description = "Validity unit for access, ID, and refresh tokens"
#  type = object({
#    access_token  = string
#    id_token      = string
#    refresh_token = string
#  })
#
#}

