# roletest1.tf

resource "aws_iam_role" "lambda_execution_role_listarfactura" {
  name = "lambda_execution_role_listarfactura-${var.environment}"

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

resource "aws_iam_policy" "lambda_policy_listarfactura" {
  name        = "lambda_basic_execution_policy_listarfactura-${var.environment}"
  description = "Permisos básicos para ejecutar Lambda"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:gestionusuariosLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "arn:aws:logs:${var.region}:${var.account}:log-group:/aws/lambda/listarfactura-${var.environment}:*"
      },
      {
        Effect   = "Allow",
        Action   = "s3:GetObject",
        Action   = "s3:ListBucket"
        Resource = [
          "arn:aws:s3:::listarfactura",
          "arn:aws:s3:::listarfactura/facturas/*"
        ]
      },
      {
        Effect = "Allow",
        Action = [
          "ssm:GetParameter",
          "ssm:GetParameters",
          "ssm:GetParametersByPath"
        ],
        Resource = "arn:aws:ssm:${var.region}:${var.account}:parameter/listarfactura/*"
      },
            {
        Effect = "Allow",
        Action = [
          "secretsmanager:GetSecretValue"
        ],
        Resource = "arn:aws:secretsmanager:${var.region}:${var.account}:secret:listarfactura/*"
      },
            {
        Effect = "Allow"
        Action = [
          "ec2:CreateNetworkInterface",
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

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment_listarfactura" {
  role       = aws_iam_role.lambda_execution_role_listarfactura.name
  policy_arn = aws_iam_policy.lambda_policy_listarfactura.arn
}

resource "aws_iam_role_policy_attachment" "lambda_vpc_access_execution_listarfactura" {
  role       = aws_iam_role.lambda_execution_role_reporteconsultas.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}


output "lambda_role_arn_listarfactura" {
  value = aws_iam_role.lambda_execution_role_listarfactura.arn
}