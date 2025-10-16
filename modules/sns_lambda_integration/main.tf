
# modules/sns_lambda_integration/main.tf

resource "aws_sns_topic" "this" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "this" {
  for_each = var.sqs_s3_arn
  #for_each = tomap(zipmap(var.sqs_s3_arn, var.sqs_s3_arn))

  topic_arn = aws_sns_topic.this.arn
  protocol  = "sqs"
  endpoint  = each.value
}

#resource "aws_lambda_permission" "this" {
#  statement_id  = "AllowSNSInvokeLambda"
#  action        = "lambda:InvokeFunction"
#  function_name = var.lambda_function_name
#  principal     = "sns.amazonaws.com"
#  source_arn    = aws_sns_topic.this.arn
#}
