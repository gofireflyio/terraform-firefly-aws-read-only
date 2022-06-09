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

variable "eventdriven_role_name"{
  type = string
}

variable "lambda_name"{
  type = string
  default = "event_driven_firefly"
}