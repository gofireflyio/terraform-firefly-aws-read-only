variable "region" {
  type = string
}

variable "env" {
  type = string
}

variable "lambda_environment_variables" {
  type    = any
  default = {}
}

variable "target_event_bus_arn"{
  type = string
}

variable "role_arn"{
  type = string
}