# roletest1.tf

resource "aws_iam_role" "lambda_execution_role_gestionusuarios" {
  name = "lambda_execution_role_gestionusuarios-${var.environment}"

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

resource "aws_iam_policy" "lambda_policy_gestionusuarios" {
  name        = "lambda_basic_execution_policy_gestionusuarios-${var.environment}"
  description = "Permisos básicos para ejecutar Lambda"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [

      {
        Effect = "Allow"
        Action = [
          "logs:gestionusuariosLogGroup",
          "logs:gestionusuariosLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "arn:aws:logs:${var.region}:${var.account}:log-group:/aws/lambda/gestionusuarios-${var.environment}:*"
      },
      {
        Effect = "Allow",
        Action = [
          "ssm:GetParameter",
          "ssm:GetParameters",
          "ssm:GetParametersByPath"
        ],
        Resource = "arn:aws:ssm:${var.region}:${var.account}:parameter/gestionusuarios/*"
      },
        {    
        Effect = "Allow",
        Action = [
          "secretsmanager:GetSecretValue"
        ],
        Resource = "arn:aws:secretsmanager:${var.region}:${var.account}:secret:gestionusuarios/*"
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

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment_gestionusuarios" {
  role       = aws_iam_role.lambda_execution_role_gestionusuarios.name
  policy_arn = aws_iam_policy.lambda_policy_gestionusuarios.arn
}

resource "aws_iam_role_policy_attachment" "lambda_vpc_access_execution_gestionusuarios" {
  role       = aws_iam_role.lambda_execution_role_reporteconsultas.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}


output "lambda_role_arn_gestionusuarios" {
  value = aws_iam_role.lambda_execution_role_gestionusuarios.arn
}

#resource "aws_iam_role_policy_attachment" "ssm_full_access" {
#  role       = aws_iam_role.lambda_execution_role_gestionusuarios.name
#  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
#}