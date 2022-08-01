provider "aws" {
  alias      = "us_west_1"
  region     = "us-west-1"
}

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

resource "terracurl_request" "firefly_aws_integration" {
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
    }
  )

  headers = {
    Content-Type = "application/json"
    Authorization: "Bearer ${jsondecode(data.terracurl_request.firefly_login.response).access_token}"
  }

  response_codes = [200]

  destroy_url    = "${var.firefly_endpoint}/integrations/aws/integration/name"
  destroy_method = "DELETE"

  destroy_headers = {
    Content-Type = "application/json"
    Authorization: "Bearer ${jsondecode(data.terracurl_request.firefly_login.response).access_token}"
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