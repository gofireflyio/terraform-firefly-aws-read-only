
output "role_arn" {
  value = aws_iam_role.firefly_cross_account_access_role.arn
}

output "external_id" {
  value = random_string.external_id.result
}

output "template_vesion" {
  value = local.version
}