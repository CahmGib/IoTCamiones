output "ssm_parameter_name" {
  value = aws_ssm_parameter.this.name
}

output "ssm_parameter_arn" {
  value = aws_ssm_parameter.this.arn
}
