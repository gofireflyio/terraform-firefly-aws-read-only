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
    data.terracurl_request.firefly_login
  ]

  create_duration = "10s"
}

resource "terracurl_request" "firefly_run_workflow_request" {
  name           = "firefly run workflow on aws provider integration"
  url            = "${var.firefly_endpoint}/integrations/aws/runWorkflow"
  method         = "POST"
  request_body   = jsonencode(
    {
      "name"= var.name
      "eventsRoleArn": var.events_role_arn
      "eventDrivenRegions": var.event_driven_regions
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
    time_sleep.wait_10_seconds
  ]
}