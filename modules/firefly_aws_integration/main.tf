data "httpclient_request" "req" {
  url             = "${var.firefly_endpoint}/account/access_keys/login"
  request_headers = {
    Content-Type : "application/json",
  }
  request_method  = "POST"
  request_body    = jsonencode({ "accessKey" = var.firefly_access_key, "secretKey" = var.firefly_secret_key })
}

output "token" {
  value = jsondecode(data.httpclient_request.req.response_body).access_token
}

output "response_code" {
  value = data.httpclient_request.req.response_code
}

resource "time_sleep" "wait_10_seconds" {
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_read_permission,
    aws_iam_role.firefly_cross_account_access_role
  ]

  create_duration = "10s"
}

module "firefly_create_integration" {
  source                                = "./modules/firefly_create_integration"
  firefly_access_token                  = jsondecode(data.httpclient_request.req.response_body).access_token
  firefly_cross_account_access_role_arn = aws_iam_role.firefly_cross_account_access_role.arn
  firefly_endpoint                      = var.firefly_endpoint
  name                                  = var.name
  full_scan_enabled                     = var.full_scan_enabled
  is_prod                               = var.is_prod
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_read_permission,
    aws_iam_role.firefly_cross_account_access_role, time_sleep.wait_10_seconds
  ]
}