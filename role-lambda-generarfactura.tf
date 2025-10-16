# roletest1.tf

resource "aws_iam_role" "lambda_execution_role_generarfactura" {
  name = "lambda_execution_role_generarfactura-${var.environment}"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "lambda_policy_generarfactura" {
  name        = "lambda_basic_execution_policy_generarfactura-${var.environment}"
  description = "Permisos básicos para ejecutar Lambda"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [

      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "arn:aws:logs:${var.region}:${var.account}:log-group:/aws/lambda/generarfactura-${var.environment}:*"
      },
      {
        Effect = "Allow",
        Action = [
          "ssm:GetParameter",
          "ssm:GetParameters",
          "ssm:GetParametersByPath"
        ],
        Resource = "arn:aws:ssm:${var.region}:${var.account}:parameter/generarfactura/*"
      },
        {    
        Effect = "Allow",
        Action = [
          "secretsmanager:GetSecretValue"
        ],
        Resource = "arn:aws:secretsmanager:${var.region}:${var.account}:secret:generarfactura/*"
      },
            {
        Effect = "Allow"
        Action = [
          "ec2:generarfacturaNetworkInterface",
          "ec2:DescribeNetworkInterfaces",
          "ec2:DeleteNetworkInterface"
        ]
        Resource = "*",
        Condition = {
          "StringEquals" = {
            "aws:CalledVia" = "lambda.amazonaws.com"
          }
      }
      }

    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment_generarfactura" {
  role       = aws_iam_role.lambda_execution_role_generarfactura.name
  policy_arn = aws_iam_policy.lambda_policy_generarfactura.arn
}

resource "aws_iam_role_policy_attachment" "lambda_vpc_access_execution_generarfactura" {
  role       = aws_iam_role.lambda_execution_role_reporteconsultas.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}


output "lambda_role_arn_generarfactura" {
  value = aws_iam_role.lambda_execution_role_generarfactura.arn
}

