
resource "terracurl_request" "firefly_login" {
  name           = "firefly_aws_integration"
  url            = "${var.firefly_endpoint}/account/access_keys/login"
  method         = "POST"
  headers        = {
    Content-Type: "application/json",
  }
  request_body = jsonencode({ "accessKey"=var.firefly_access_key,  "secretKey"=var.firefly_secret_key })
  response_codes = [200, 409]

  destroy_url    = "${var.firefly_endpoint}/account/access_keys/login"
  destroy_method = "POST"

  destroy_headers = {
    Content-Type: "application/json",
  }

  destroy_request_body =  jsonencode({ "accessKey"=var.firefly_access_key,  "secretKey"=var.firefly_secret_key })
  destroy_response_codes = [204]
}

output "token" {
  value = jsondecode(terracurl_request.firefly_login.response).access_token
}

output "response_code" {
  value = terracurl_request.firefly_login.response
}

resource "time_sleep" "wait_10_seconds" {
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_read_permission,
    aws_iam_role.firefly_cross_account_access_role
  ]

  create_duration = "10s"
}

resource "terracurl_request" "firefly_aws_integration_request" {
  name           = "firefly aws provider integration"
  url            = "${var.firefly_endpoint}/integrations/aws/"
  method         = "POST"
  request_body   = jsonencode(
    {
      "name"= var.name,
      "roleArn"= aws_iam_role.firefly_cross_account_access_role.arn,
      "externalId"= var.role_external_id,
      "fullScanEnabled"= var.full_scan_enabled,
      "isProd"= var.is_prod
      "isEventDriven" = var.event_driven
    }
  )

  headers = {
    Content-Type = "application/json"
    Authorization: "Bearer ${jsondecode(terracurl_request.firefly_login.response).access_token}"
  }

  lifecycle {
      ignore_changes = [
        headers,
        destroy_headers,
        request_body
      ]
  }
  response_codes = [200, 409]

  destroy_url    = "${var.firefly_endpoint}/integrations/aws/integration/name"
  destroy_method = "DELETE"

  destroy_headers = {
    Content-Type = "application/json"
    Authorization: "Bearer ${jsondecode(terracurl_request.firefly_login.response).access_token}"
  }

  destroy_request_body =  jsonencode(
    {
      "name"= var.name
    }
  )
  destroy_response_codes = [204]
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_read_permission,
    aws_iam_role.firefly_cross_account_access_role, time_sleep.wait_10_seconds
  ]
}