output "secret_arns" {
  description = "ARNs de los secretos creados"
  value       = aws_secretsmanager_secret.this[*].arn
}
