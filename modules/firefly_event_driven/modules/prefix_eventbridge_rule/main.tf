data "aws_lambda_function" "event_driven_firefly_lambda" {
  function_name = var.event_driven_firefly_lambda_name
}

resource "aws_cloudwatch_event_rule" "prefix_rule" {
  name        = "firefly-events-${var.service}"
  description = "${var.service} Cloud Trail to Firefly collection lambda"

  event_pattern = jsonencode({
    "source" : ["aws.${var.service}"],
    "detail" : {
      "eventName" : [
        for rule in var.rules: {
          "prefix" : rule
        }
      ]
    }
  })
}

resource "aws_cloudwatch_event_target" "target" {
  rule      = aws_cloudwatch_event_rule.prefix_rule.name
  target_id = "SendToLambda"
  arn       = data.aws_lambda_function.event_driven_firefly_lambda.arn
}