data "aws_caller_identity" "current" {}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

resource "aws_iam_policy" "firefly_eventbridge_permission" {
  name        = "${var.env}-fireflyEventDrivenRulesPermission"
  path        = "/"
  description = "permission to put eventbridge rules"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": [
            "events:*"
          ],
          "Effect": "Allow",
          "Resource": "arn:aws:events:*:${local.account_id}:rule/firefly-events-*"
        }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "firefly_eventbridge_permissions" {
  role       = var.firefly_role_name
  policy_arn = aws_iam_policy.firefly_eventbridge_permission.arn
}

resource "aws_iam_role" "event_bus_invoke_remote_event_bus" {
  name               = "${var.env}-event-bus-invoke-remote-event-bus"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_policy" "event_bus_invoke_remote_event_bus" {
  name   = "${var.env}-event_bus_invoke_remote_event_bus"
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": [
            "events:PutEvents"
          ],
          "Effect": "Allow",
          "Resource": var.target_event_bus_arn
        }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "event_bus_invoke_remote_event_bus" {
  role       = aws_iam_role.event_bus_invoke_remote_event_bus.name
  policy_arn = aws_iam_policy.event_bus_invoke_remote_event_bus.arn
}