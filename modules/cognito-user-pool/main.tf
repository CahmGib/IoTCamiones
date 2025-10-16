data "aws_lambda_function" "terraform_lambda_autenticador" {
  function_name = var.name_function_autenticador
}

resource "aws_cognito_user_pool" "pool" {
  name                     = "${var.name_cognito}-${var.environment}"
  auto_verified_attributes = ["email"]

  /*
  lambda_config {
    pre_sign_up = data.aws_lambda_function.terraform_lambda_autenticador.arn
  }   */

  # username_attributes                  = ["email"]
  alias_attributes = ["preferred_username"]
  username_configuration {
    case_sensitive = true
  }

  verification_message_template {
    email_subject_by_link = var.email_subject
    email_message_by_link = var.email_message
    default_email_option  = "CONFIRM_WITH_LINK"
  }

  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }
  }

  password_policy {
    minimum_length                   = 8
    require_lowercase                = true
    require_numbers                  = true
    require_symbols                  = true
    require_uppercase                = true
    temporary_password_validity_days = 7
  }
  mfa_configuration = "ON"
  software_token_mfa_configuration {
    enabled = true
  }


  user_pool_add_ons {
    advanced_security_mode = "ENFORCED"
  }





  device_configuration {
    challenge_required_on_new_device      = false
    device_only_remembered_on_user_prompt = false
  }

  # Habilitar el mantenimiento del valor del atributo original activo cuando hay una actualización pendiente

  # Configuración del esquema de atributos personalizados
  schema {
    attribute_data_type = "Number"
    name                = "firstAccess"
    mutable             = true
    required            = false
    number_attribute_constraints {
      min_value = "0"
      max_value = "1"
    }
  }

  schema {
    attribute_data_type = "String"
    name                = "failureAccessCount"
    mutable             = true
    required            = false
    number_attribute_constraints {
      min_value = "0"
      max_value = "2048"
    }
  }

  lifecycle {

    ignore_changes = [
      password_policy,
      schema
    ]
  }


}


resource "aws_cognito_risk_configuration" "example" {
  user_pool_id = aws_cognito_user_pool.pool.id

  compromised_credentials_risk_configuration {
    actions {
      event_action = "BLOCK"
    }
  }
  account_takeover_risk_configuration {
    actions {
      high_action {
        event_action = "BLOCK"
        notify       = true


      }
      medium_action {
        event_action = "MFA_REQUIRED"
        notify       = true

      }
      low_action {
        event_action = "MFA_REQUIRED"
        notify       = true

      }
    }
    notify_configuration {
      from     = "carlosheredia@periferia-it.com"
      reply_to = "carlosheredia@periferia-it.com"
      # source_arn = var.email_configuration_source_arn
      source_arn = "arn:aws:ses:us-east-1:${format("%012s", var.account)}:identity/carlosheredia@periferia-it.com"
      no_action_email {
        subject   = "Security Alert"
        html_body = file("${path.module}/../htmlcorreo/correo.html")
        text_body = "We detected an unrecognized sign-in to your account with this information: Time: {login-time}"
      }
    }
  }

}
resource "aws_ses_email_identity" "example" {
  email = "carlosheredia@periferia-it.com"
}

resource "aws_ses_identity_policy" "example" {
  name     = "ses-css"
  identity = "carlosheredia@periferia-it.com"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "cognito-idp.amazonaws.com"
        },
        "Action" : [
          "ses:SendEmail",
          "ses:SendRawEmail"
        ],
        "Resource" : "arn:aws:ses:us-east-1:${format("%012s", var.account)}:identity/carlosheredia@periferia-it.com"
      }
    ]
  })
}

resource "aws_cognito_resource_server" "resource_server_read" {
  name         = "${var.resource_group_name_cognito_read}-${var.environment}"
  identifier   = var.identifier_resource_group_cognito_read
  user_pool_id = aws_cognito_user_pool.pool.id

  scope {
    scope_name        = var.scope_name_read
    scope_description = var.scope_description_read
  }


}

resource "aws_cognito_resource_server" "resource_server_write" {
  name         = "${var.resource_group_name_cognito_write}-${var.environment}"
  identifier   = "${var.identifier_resource_group_cognito_write}w"
  user_pool_id = aws_cognito_user_pool.pool.id


  scope {
    scope_name        = var.scope_name_write
    scope_description = var.scope_description_write
  }
}


resource "aws_cognito_user_pool_client" "client_read" {
  name                                 = var.name_cognito_client_read
  user_pool_id                         = aws_cognito_user_pool.pool.id
  supported_identity_providers         = ["COGNITO"]
  callback_urls                        = ["${var.callback_url_postman_web}", "${var.callback_url_postman_app}"]
  generate_secret                      = true
  allowed_oauth_flows_user_pool_client = true
  #allowed_oauth_flows                  = ["code","implicit"]
  #allowed_oauth_scopes                 = aws_cognito_resource_server.resource_server_read.scope_identifiers

  allowed_oauth_flows   = var.allowed_oauth_flows_read
  allowed_oauth_scopes  = aws_cognito_resource_server.resource_server_read.scope_identifiers
  explicit_auth_flows   = var.explicit_auth_flows_read
  access_token_validity = var.access_token_validity_read
  id_token_validity     = var.id_token_validity_read

  token_validity_units {
    access_token  = "minutes"
    id_token      = "minutes"
    refresh_token = "days"
  }
}
resource "aws_cognito_user_pool_client" "client_write" {

  name                                 = var.name_cognito_client_write
  user_pool_id                         = aws_cognito_user_pool.pool.id
  supported_identity_providers         = ["COGNITO"]
  callback_urls                        = ["${var.callback_url_postman_web}", "${var.callback_url_postman_app}"]
  generate_secret                      = var.generate_secret_write
  allowed_oauth_flows_user_pool_client = true

  allowed_oauth_flows   = var.allowed_oauth_flows_write
  allowed_oauth_scopes  = aws_cognito_resource_server.resource_server_write.scope_identifiers
  explicit_auth_flows   = var.explicit_auth_flows_write
  access_token_validity = var.access_token_validity_write
  id_token_validity     = var.id_token_validity_write

  token_validity_units {
    access_token  = "minutes"
    id_token      = "minutes"
    refresh_token = "days"
  }
}

resource "aws_cognito_user_pool_domain" "main" {
  domain       = var.cognito_domain
  user_pool_id = aws_cognito_user_pool.pool.id
}


resource "aws_cognito_identity_pool" "identity_pool" {
  identity_pool_name               = "identity-pool-css"
  allow_unauthenticated_identities = false
  cognito_identity_providers {
    client_id               = aws_cognito_user_pool_client.client_write.id
    provider_name           = aws_cognito_user_pool.pool.endpoint
    server_side_token_check = false
  }
}
# ---------------------------------------------------------------------------------------------------------------------
# PARAMETER STORE USERPOOLID
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_ssm_parameter" "user_pool_id" {
  #name        = "/${var.project}/${var.project_services}/db_postgres/${var.environment}/password"
  #name        = "/${var.project}/db_postgres/${var.environment}/password"
  name        = "/${var.project}/${var.environment}/cognito/userPoolId"
  description = "Id userpool"
  type        = "SecureString"
  value       = aws_cognito_user_pool.pool.id

  tags = {
    Name = "${var.project}_${var.environment}_userpoolid_ps"

  }
}
# ---------------------------------------------------------------------------------------------------------------------
# PARAMETER STORE CLIENT ID
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_ssm_parameter" "client_id" {
  #name        = "/${var.project}/${var.project_services}/db_postgres/${var.environment}/password"
  #name        = "/${var.project}/db_postgres/${var.environment}/password"
  name        = "/${var.project}/${var.environment}/cognito/clientId"
  description = "Id userpool"
  type        = "SecureString"
  value       = aws_cognito_user_pool_client.client_write.id

  tags = {
    Name = "${var.project}_${var.environment}_clientlid_ps"

  }
}
# ---------------------------------------------------------------------------------------------------------------------
# PARAMETER STORE
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_ssm_parameter" "client_secret" {
  #name        = "/${var.project}/${var.project_services}/db_postgres/${var.environment}/password"
  #name        = "/${var.project}/db_postgres/${var.environment}/password"
  name        = "/${var.project}/${var.environment}/cognito/clienteSecret"
  description = "Id userpool"
  type        = "SecureString"
  value       = aws_cognito_user_pool_client.client_write.client_secret

  tags = {
    Name = "${var.project}_${var.environment}_clientSecret_ps"

  }
}