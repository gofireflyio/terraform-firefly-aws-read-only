output "firefly_integration_role_arn" {
  value = aws_iam_role.firefly_cross_account_access_role.arn
}

output "template_vesion" {
  value = local.version
}

output "role_arn" {
  value = module.eventbridge_rule_permission[0].role_arn
}