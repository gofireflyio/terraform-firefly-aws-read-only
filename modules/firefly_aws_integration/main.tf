
data "terracurl_request" "firefly_login" {
  name           = "firefly_aws_integration"
  url            = "${var.firefly_endpoint}/account/access_keys/login"
  method         = "POST"
  headers        = {
    Content-Type: "application/json",
  }
  request_body = jsonencode({ "accessKey"=var.firefly_access_key,  "secretKey"=var.firefly_secret_key })

}

output "token" {
  value = jsondecode(data.terracurl_request.firefly_login.response).access_token
}

output "response_code" {
  value = data.terracurl_request.firefly_login.response
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
    Authorization: "Bearer ${jsondecode(data.terracurl_request.firefly_login.response).access_token}"
  }

   lifecycle {
      ignore_changes = [
        headers,
        destroy_headers,
        request_body
      ]
  }
  response_codes = [200, 409]

  destroy_url    = "https://www.google.com"
  destroy_method = "GET"

  destroy_headers = {}

  destroy_request_body =  ""
  destroy_response_codes = [200]
   depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_read_permission,
    aws_iam_role.firefly_cross_account_access_role, time_sleep.wait_10_seconds
  ]
}