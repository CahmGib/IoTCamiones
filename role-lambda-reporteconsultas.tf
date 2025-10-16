# roletest1.tf

resource "aws_iam_role" "lambda_execution_role_reporteconsultas" {
  name = "lambda_execution_role_reporteconsultas-${var.environment}"

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

resource "aws_iam_policy" "lambda_policy_reporteconsultas" {
  name        = "lambda_basic_execution_policy_reporteconsultas-${var.environment}"
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
        Resource = "arn:aws:logs:${var.region}:${var.account}:log-group:/aws/lambda/reporteconsultas-${var.environment}:*"
      },
      {
        Effect = "Allow",
        Action = [
          "rds:DescribeDBInstances",
          "rds:DescribeDBClusters",
          "rds:DescribeDBSubnetGroups"
        ]
        Resource = "*"
      },
      {
        Effect   = "Allow",
        Action   = "s3:GetObject",
        Resource = [
          "arn:aws:s3:::reporteconsultas",
          "arn:aws:s3:::reporteconsultas/facturas/*"
        ]
      },

      {
        Effect = "Allow",
        Action = [
          "ssm:GetParameter",
          "ssm:GetParameters",
          "ssm:GetParametersByPath"
        ],
        Resource = "arn:aws:ssm:${var.region}:${var.account}:parameter/reporteconsultas/*"
      },
      {
        Effect = "Allow",
        Action = [
          "secretsmanager:GetSecretValue"
        ],
        Resource = "arn:aws:secretsmanager:${var.region}:${var.account}:secret:reporteconsultas/*"
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

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment_reporteconsultas" {
  role       = aws_iam_role.lambda_execution_role_reporteconsultas.name
  policy_arn = aws_iam_policy.lambda_policy_reporteconsultas.arn
}

resource "aws_iam_role_policy_attachment" "lambda_vpc_access_execution_reporteconsultas" {
  role       = aws_iam_role.lambda_execution_role_reporteconsultas.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}

output "lambda_role_arn_reporteconsultas" {
  value = aws_iam_role.lambda_execution_role_reporteconsultas.arn
}