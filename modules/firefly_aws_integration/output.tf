output "firefly_integration_role_arn" {
  value = aws_iam_role.firefly_cross_account_access_role.arn
}

output "template_vesion" {
  value = local.version
}

output "event_driven_role_name"{
  value = var.event_driven ? aws_iam_role.event_driven_firefly_role[0].name : ""
}