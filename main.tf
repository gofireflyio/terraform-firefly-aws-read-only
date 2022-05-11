data "httpclient_request" "req" {
  url = "${var.firefly_endpoint}/account/access_keys/login"
  request_headers = {
    Content-Type: "application/json",
  }
  request_method = "POST"
  request_body = jsonencode({ "accessKey"=var.firefly_access_key,  "secretKey"=var.firefly_secret_key })
}

output "token" {
  value = jsondecode(data.httpclient_request.req.response_body).access_token
}

output "response_code" {
  value = data.httpclient_request.req.response_code
}

resource "time_sleep" "wait_10_seconds" {
  depends_on = [aws_iam_policy.firefly_s3_specific_read_permission, aws_iam_role.firefly_cross_account_access_role]

  create_duration = "10s"
}

resource "null_resource" "firefly_create_integration" {
  triggers = {
    version = local.version
  }

  provisioner "local-exec" {
    command = <<CURL
curl --request POST "${var.firefly_endpoint}/integrations/aws/" \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${jsondecode(data.httpclient_request.req.response_body).access_token}" \
    --data ${jsonencode(jsonencode({"name"= var.name, "roleArn"= aws_iam_role.firefly_cross_account_access_role.arn, "externalId"= "NOT_CONFIGURED", "fullScanEnabled": var.full_scan_enabled, "isProd": var.is_prod }))}

CURL
  }

  depends_on = [aws_iam_policy.firefly_s3_specific_read_permission, aws_iam_role.firefly_cross_account_access_role, time_sleep.wait_10_seconds]
}