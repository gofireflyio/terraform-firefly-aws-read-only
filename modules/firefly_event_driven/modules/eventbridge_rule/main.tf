data "aws_lambda_function" "event_driven_firefly_lambda" {
  function_name = var.event_driven_firefly_lambda_name
}

resource "aws_lambda_permission" "cloud_watch_can_trigger_premission_service_event" {
  statement_id  = "cloud-watch-can-trigger-premission-${var.service}-event"
  action        = "lambda:InvokeFunction"
  function_name = var.event_driven_firefly_lambda_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.rule.arn
}

resource "aws_cloudwatch_event_rule" "rule" {
  name        = "${var.service}-events"
  description = "${var.service} Cloud Trail to Firefly collection lambda"

  event_pattern = jsonencode({
    "source" : ["aws.${var.service}"],
    "detail" : {
      "eventName" : var.rules
    }
  })
}

resource "aws_cloudwatch_event_target" "target" {
  rule      = aws_cloudwatch_event_rule.rule.name
  target_id = "SendToLambda"
  arn       = data.aws_lambda_function.event_driven_firefly_lambda.arn
}