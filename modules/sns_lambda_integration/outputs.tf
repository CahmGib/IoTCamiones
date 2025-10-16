# modules/sns_lambda_integration/outputs.tf

output "sns_topic_arn" {
  value = aws_sns_topic.this.arn
}

#output "aws_sns_topic_subscription" {
#  value = aws_sns_topic_subscription.this.arn
#}

output "aws_sns_topic_subscription" {
  value = { for k, v in aws_sns_topic_subscription.this : k => v.arn }
}