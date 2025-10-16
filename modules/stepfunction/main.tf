
resource "aws_sfn_state_machine" "this_state_machine" {
  name     = "StateMachine"
  role_arn = aws_iam_role.step_function_role.arn

  definition = jsonencode({
    Comment = "Step Function"
    StartAt = "LambdaTask"
    States = {
      LambdaTask = {
        Type     = "Task"
        Resource = "arn:aws:lambda:us-east-1:850179601728:function:AWUE1ATHMA-PT-LAMBDA-TRANSFORMACION-01"
        End      = true
      }
    }
  })
}

resource "aws_iam_role" "step_function_role" {
  name = "step_function_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "states.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy" "step_function_policy" {
  role = aws_iam_role.step_function_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "lambda:InvokeFunction",
        ]
        Effect   = "Allow"
        Resource = "arn:aws:lambda:us-east-1:850179601728:function:AWUE1ATHMA-PT-LAMBDA-TRANSFORMACION-01"
      },
    ]
  })
}
