resource "aws_secretsmanager_secret" "this" {
  count       = length(var.secrets)
  name        = var.secrets[count.index].name
  description = var.secrets[count.index].description
  tags        = var.secrets[count.index].tags
}

resource "aws_secretsmanager_secret_version" "this" {
  count       = length(var.secrets)
  secret_id   = aws_secretsmanager_secret.this[count.index].id
  secret_string = var.secrets[count.index].secret_string
}
