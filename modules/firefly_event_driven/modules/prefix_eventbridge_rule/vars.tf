variable "event_driven_firefly_lambda_name" {
  type = string
}

variable "service" {
  type = string
}

variable "rules" { 
  type = list(string)
}

variable "running_region" {
  type = string
}

variable "service_regions"{
  type = list(string)
}
