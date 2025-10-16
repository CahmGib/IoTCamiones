###############################
#  SECURITY GROUP DE LA LAMBDA
###############################
resource "aws_security_group" "lambda_sg" {
  name        = "${var.lambda_function_name}-sg-${var.env}"
  description = "Security Group para la Lambda ${var.lambda_function_name}"
  vpc_id      = var.vpc_id

  # Reglas de salida (egress): permitir todo el tráfico saliente
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # (Opcional) Si necesitas permitir conexiones entrantes desde la BD u otros servicios internos
  # ingress {
  #   description = "Permitir acceso a la base de datos o servicios internos"
  #   from_port   = 5432  # Ejemplo: puerto PostgreSQL
  #   to_port     = 5432
  #   protocol    = "tcp"
  #   security_groups = [aws_security_group.db_sg.id] # si tienes una BD en SG separado
  # }

  tags = {
    Name        = "${var.lambda_function_name}-sg-${var.env}"
    Environment = var.env
  }
}




resource "aws_lambda_function" "lambda_cliente" {
  filename         = var.lambda_function_filename
  function_name    = "${var.lambda_function_name}-${var.environment}"
  role             = var.aws_iam_role_arn
  handler          = var.index_handler
  runtime          = var.runtime
  package_type     = var.package_type_lambda
  source_code_hash = filebase64sha256("${var.lambda_function_source}")
  timeout          = var.timeout_lambda
  memory_size      = var.memory_size_lambda
  
  layers = var.lambda_layers
  tags = {
    Name = "${var.tags}"
  }
  environment {
    variables = var.environment_variables
  }
  lifecycle {
    ignore_changes = [
      source_code_hash,
      filename
    ]
  }
  
    vpc_config {
    #subnet_ids         = var.private_subnet_ids
    subnet_ids         = data.aws_subnets.private_subnets.ids
    security_group_ids = [aws_security_group.lambda_sg.id]
  }

}


resource "aws_lambda_permission" "api_gateway_invoke" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda_cliente.function_name
  principal     = "apigateway.amazonaws.com"
  #qualifier     = var.environment ##### Alias
  source_arn    = var.lambda_source_arn
  
    depends_on = [
    aws_lambda_function.lambda_cliente
  ]
}

