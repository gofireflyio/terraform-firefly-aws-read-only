resource "null_resource" "firefly_create_integration" {
  triggers = {
    version = local.version
  }

  provisioner "local-exec" {
    command = <<CURL
curl --request POST "${var.firefly_endpoint}/integrations/aws/" \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${var.firefly_access_token}" \
    --data ${jsonencode(jsonencode({"name"= var.name, "roleArn"= var.firefly_cross_account_access_role_arn, "externalId"= "NOT_CONFIGURED", "fullScanEnabled": var.full_scan_enabled, "isProd": var.is_prod }))}

CURL
  }
}

#TODO: make it work instead of null_resource and extract account_id, integration_id from response
#data "httpclient_request" "req" {
#  url             = "${var.firefly_endpoint}/integrations/aws"
#  request_headers = {
#    Content-Type : "application/json",
#    Authorization: "Bearer ${var.firefly_access_token}"
#  }
#  request_method  = "POST"
#  request_body    = jsonencode(jsonencode({"name"= var.name, "roleArn"= var.firefly_cross_account_access_role_arn, "externalId"= "NOT_CONFIGURED", "fullScanEnabled": var.full_scan_enabled, "isProd": var.is_prod }))
#}