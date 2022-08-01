module "rule" {
  count =  contains(var.service_regions, var.running_region) ? 1 : 0
  source = "../rule"
  service = var.service
  rule_name = var.rule_name
  target_event_bus_arn = var.target_event_bus_arn
  role_arn = var.role_arn
  event_pattarn = jsonencode({
    "source" : ["aws.${var.service}"],
    "detail" : {
      "eventName" : var.rules
    }
  })
}