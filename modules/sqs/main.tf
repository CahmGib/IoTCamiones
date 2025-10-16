resource "aws_sqs_queue" "sqs_test" {
  name                      = var.name_sqs
  delay_seconds             = var.delay_seconds
  max_message_size          = var.max_message_size
  message_retention_seconds = var.message_retention_seconds
  receive_wait_time_seconds = var.receive_wait_time_seconds
  #kms_master_key_id         = "alias/aws/sqs"
  ##kms_data_key_reuse_period_seconds = 300
  # Configuración condicional del redrive_policy si se proporciona el ARN de la DLQ
  #redrive_policy = var.dead_letter_queue_arn != "" ? jsonencode({
  #  deadLetterTargetArn = var.dead_letter_queue_arn,
  #  maxReceiveCount     = 3
  #}) : null
}
resource "aws_lambda_event_source_mapping" "name" {
  event_source_arn = aws_sqs_queue.sqs_test.arn
  function_name    = var.function_name
}

#resource "aws_iam_role_policy" "lambda_sqs_policy" {
# name   = "lambda-sqs-policy"
# role   = aws_iam_role.lambda_execution_role.name
#
# policy = jsonencode({
#   Version = "2012-10-17",
#   Statement = [
#     {
#       Effect   = "Allow"
#       Action   = [
#         "sqs:ReceiveMessage",
#         "sqs:DeleteMessage",
#         "sqs:GetQueueAttributes"
#       ]
#       Resource = aws_sqs_queue.sqs_test.arn
#             }
#   ]
# })
#
resource "aws_iam_role_policy" "lambda_sqs_policy" {
  name = "lambda-sqs-policy"
  role = var.lambda_execution_role_arn

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "sqs:ReceiveMessage",
          "sqs:DeleteMessage",
          "sqs:GetQueueAttributes"
        ]
        Resource = aws_sqs_queue.sqs_test.arn
      }
    ]
  })
}


resource "aws_sqs_queue_policy" "sqs_policy_css" {
  queue_url = aws_sqs_queue.sqs_test.id

  policy = jsonencode({
    Version = "2012-10-17",
    Id      = "sqspolicy",
    Statement = [
      {
        Sid       = "First",
        Effect    = "Allow",
        Principal = { AWS = "arn:aws:iam::${format("%012s", var.account)}:root" },
        Action    = "SQS:*",
        Resource  = "arn:aws:sqs:${var.region}:${format("%012s", var.account)}:*",
      },
    ],
  })
}


## Guardar la URL de la cola en Parameter Store
#resource "aws_ssm_parameter" "sqs_url_parameter" {
#  name  = "/${var.prefix}/${var.environment}/sqs/${var.name_sqs} "
#  type  = "String"
#  value = aws_sqs_queue.sqs_test.url
#}






