

module "secrets_manager" {
  source  = "./modules/secret-manager"
  secrets = var.secrets
}
