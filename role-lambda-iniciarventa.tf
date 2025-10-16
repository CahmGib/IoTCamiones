# roletest1.tf

resource "aws_iam_role" "lambda_execution_role_iniciarventa" {
  name = "lambda_execution_role_iniciarventa-${var.environment}"

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

resource "aws_iam_policy" "lambda_policy_iniciarventa" {
  name        = "lambda_basic_execution_policy_iniciarventa-${var.environment}"
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
        Resource = "arn:aws:logs:${var.region}:${var.account}:log-group:/aws/lambda/iniciarventa-${var.environment}:*"
      },
      {
        Effect = "Allow",
        Action = [
          "ssm:GetParameter",
          "ssm:GetParameters",
          "ssm:GetParametersByPath"
        ],
        Resource = "arn:aws:ssm:${var.region}:${var.account}:parameter/iniciarventa/*"
      },
        {    
        Effect = "Allow",
        Action = [
          "secretsmanager:GetSecretValue"
        ],
        Resource = "arn:aws:secretsmanager:${var.region}:${var.account}:secret:iniciarventa/*"
      },
      {
        Effect = "Allow"
        Action = [
          "ec2:gestionusuariosNetworkInterface",
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

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment_iniciarventa" {
  role       = aws_iam_role.lambda_execution_role_iniciarventa.name
  policy_arn = aws_iam_policy.lambda_policy_iniciarventa.arn
}

resource "aws_iam_role_policy_attachment" "lambda_vpc_access_execution_iniciarventa" {
  role       = aws_iam_role.lambda_execution_role_iniciarventa.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}
output "lambda_role_arn_iniciarventa" {
  value = aws_iam_role.lambda_execution_role_iniciarventa.arn
}

#resource "aws_iam_role_policy_attachment" "ssm_full_access" {
#  role       = aws_iam_role.lambda_execution_role_iniciarventa.name
#  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
#}