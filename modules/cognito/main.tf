resource "aws_cognito_user_pool" "this" {
  name = "${var.user_pool_name}-${var.environment}"

  auto_verified_attributes = var.auto_verified_attributes
  alias_attributes         = var.alias_attributes

  password_policy {
    minimum_length                   = var.password_min_length
    require_uppercase                = var.password_require_upper
    require_lowercase                = var.password_require_lower
    require_numbers                  = var.password_require_number
    require_symbols                  = var.password_require_symbols
    temporary_password_validity_days = var.temp_password_validity_days
  }

  mfa_configuration = var.mfa_configuration
  software_token_mfa_configuration { enabled = var.software_token_mfa_enabled }

  sms_configuration {
    external_id    = "cognito-sms-role-${var.environment}"
    sns_caller_arn = var.sns_caller_arn
  }

  email_configuration {
    email_sending_account = var.email_sending_account
    from_email_address    = var.from_email_address
    source_arn            = var.email_source_arn
  }

  verification_message_template {
    email_subject_by_link = var.email_subject
    email_message_by_link = var.email_message
    default_email_option  = var.default_email_option
  }

  user_pool_add_ons {
    advanced_security_mode = var.advanced_security_mode
  }

  account_recovery_setting {
    recovery_mechanism {
      name     = var.recovery_mechanism1_name
      priority = var.recovery_mechanism1_priority
    }
    recovery_mechanism {
      name     = var.recovery_mechanism2_name
      priority = var.recovery_mechanism2_priority
    }
  }

  lifecycle {
    ignore_changes = [schema]
  }
  schema {
     name                = "document_number"
     attribute_data_type = "String"
     mutable             = true
     required            = true
     string_attribute_constraints {
       min_length = "0"
       max_length = "2048"
     }
   }
  
   schema {
     name                = "document_type_id"
     attribute_data_type = "String"
     mutable             = true
     required            = true
     string_attribute_constraints {
       min_length = "0"
       max_length = "2048"
     }
   }
  
   schema {
     name                = "role_id"
     attribute_data_type = "String"
     mutable             = true
     required            = true
     string_attribute_constraints {
       min_length = "0"
       max_length = "2048"
     }
   }

#  dynamic "schema" {
#    for_each = var.custom_attributes
#    content {
#      name                = schema.value.name
#      attribute_data_type = schema.value.type
#      mutable             = schema.value.mutable
#      required            = schema.value.required
#      string_attribute_constraints {
#        min_length = schema.value.min_length
#        max_length = schema.value.max_length
#      }
#    }
#  }
}

resource "aws_cognito_user_pool_client" "this" {
  name         = var.client_name
  user_pool_id = aws_cognito_user_pool.this.id

  generate_secret                        = var.generate_secret
  allowed_oauth_flows_user_pool_client   = var.allowed_oauth_flows_user_pool_client
  supported_identity_providers           = var.supported_identity_providers
  allowed_oauth_scopes                   = var.allowed_oauth_scopes
  allowed_oauth_flows                    = var.allowed_oauth_flows

  callback_urls = var.callback_urls
  logout_urls   = var.logout_urls
  access_token_validity                     = var.access_token_validity
  id_token_validity                         = var.id_token_validity
  refresh_token_validity                    = var.refresh_token_validity
   token_validity_units {
    access_token  = "minutes"
    id_token      = "minutes"
    refresh_token = "days"
  }
}


resource "aws_cognito_identity_pool" "this" {
  identity_pool_name               = var.identity_pool_name
  allow_unauthenticated_identities = var.allow_unauth_identities

  cognito_identity_providers {
    client_id               = aws_cognito_user_pool_client.this.id
    provider_name           = aws_cognito_user_pool.this.endpoint
    server_side_token_check = var.server_side_token_check
  }
}
