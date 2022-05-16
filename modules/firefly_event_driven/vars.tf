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

variable "role_name"{
  type = string
}