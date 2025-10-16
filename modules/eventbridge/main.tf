resource "aws_cloudwatch_event_rule" "daily_glue_trigger" {
  name                = "${var.client}-glue-trigger"
  description         = "Trigger Glue job every day at 8am"
  schedule_expression = "cron(0 8 * * ? *)"
}

resource "aws_cloudwatch_event_target" "glue_target" {
  rule      = aws_cloudwatch_event_rule.daily_glue_trigger.name
  target_id = "${var.client}-glue-target"
  #arn       = var.glue_job_arn
   arn       = "arn:aws:glue:us-east-1:282927509129:job/${var.glue_job_name}"

  role_arn  = var.eventbridge_role_arn
    input = jsonencode({
    JobName = var.glue_job_name
  })
}
