variable "aws_profile" {
  description = "The aws profile to create aws provider with"
  default = ""
  type    = string
}

variable "aws_external_id" {
  description = "The aws external id to create aws provider with"
  default = ""
  type    = string
}

variable "aws_access_key" {
  description = "The aws access key to create aws provider with"
  default = ""
  type    = string
}

variable "aws_secret_key" {
  description = "The aws secret key to create aws provider with"
  default = ""
  type    = string
}

variable "aws_session_name" {
  description = "The aws session name to create aws provider with"
  default = ""
  type    = string
}

variable "aws_assume_role_arn" {
  description = "The aws assume role arn to create aws provider with"
  default = ""
  type    = string
}

variable "aws_assume_role_external_id" {
  description = "The aws assume role external id to create aws provider with"
  default = ""
  type    = string
}

variable "aws_assume_web_identity_role_arn" {
  description = "The aws assume web identity role arn to create aws provider with"
  default = ""
  type    = string
}

variable "aws_assume_web_identity_role_token" {
  description = "Value of a web identity token from an OpenID Connect to create aws provider with"
  default = ""
  type    = string
}

variable "aws_assume_web_identity_role_token_file" {
  description = "A File containing a web identity token from an OpenID Connect to create aws provider with"
  default = ""
  type    = string
}