output "eventbridge_rule_role_arn" {
  value = aws_iam_role.event_bus_invoke_remote_event_bus.arn
}