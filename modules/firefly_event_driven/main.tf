data "aws_caller_identity" "current" {}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

output "account_id" {
  value = local.account_id
}

data "aws_iam_role" "event_driven_role" {
  name = var.role_name
}

resource "aws_ssm_parameter" "FireflyToken" {
  name        = "FireflyToken"
  description = "SSM Parameter for firefly token."
  type        = "String"
  value       = "token"
  data_type   = "text"
  overwrite   = true
}

resource "aws_lambda_function" "event_driven_firefly_lambda" {
  function_name = "event_driven_firefly"
  role          = data.aws_iam_role.event_driven_role.arn

  image_uri    = "094724549126.dkr.ecr.${var.region}.amazonaws.com/aws_event_extractor:latest"
  package_type = "Image"

  timeout     = 120
  memory_size = 128

  environment {
    variables = var.lambda_environment_variables
  }

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_cloudwatch_log_group" "event_driven_firefly_log_group" {
  name              = "/aws/lambda/${var.region}_event_driven_firefly"
  retention_in_days = 30
}

resource "aws_lambda_permission" "cloud_watch_can_trigger_premission_account" {
  statement_id   = "cloud-watch-can-trigger-premission-event"
  action         = "lambda:InvokeFunction"
  function_name  = aws_lambda_function.event_driven_firefly_lambda.function_name
  principal      = "logs.${var.region}.amazonaws.com"
  source_account = local.account_id
}

module "rule" {
    source = "./modules/eventbridge_rule"
    for_each = var.actions
    service = each.key
    rules = each.value["rules"]
    running_region = var.region
    service_regions = each.value["regions"]
    event_driven_firefly_lambda_name = aws_lambda_function.event_driven_firefly_lambda.function_name
} 