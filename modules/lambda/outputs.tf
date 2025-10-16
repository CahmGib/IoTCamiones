output "lambda_arn" {
  value = aws_lambda_function.lambda_cliente.arn
}


#output "lambda_name" {
#  value = aws_lambda_function.role.name
#}
#output "lambda_role_arn" {
#  value = aws_iam_role.lambda_execution_role.arn
#}
#output "lambda3" {
#  value = aws_lambda_function.lambda_functions
#}
#output "lambda_execution_role_name" {
#  value = aws_iam_role.lambda_execution_role.name
#}
output "lambda_execution_role_name" {
  value = split("/", var.aws_iam_role_arn)[1]
}
output "lambda_function_name" {
  value = aws_lambda_function.lambda_cliente.function_name
}