data "aws_caller_identity" "current" {}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

module "rule" {
    source = "./modules/eventbridge_rule"
    for_each = {for action in local.actions : action.rule-name => action}
    service = each.value["service"]
    rule_name = each.value["rule-name"]
    rules = each.value["rules"]
    running_region = var.region
    service_regions = each.value["regions"]
    target_event_bus_arn = var.target_event_bus_arn
    role_arn = var.role_arn
} 