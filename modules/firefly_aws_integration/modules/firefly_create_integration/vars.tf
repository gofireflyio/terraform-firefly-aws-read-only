variable "firefly_access_token" {
  type        = string
  description = "Your authentication access_token"
}

variable "name" {
  type        = string
  description = "Your authentication access_token"
}

variable "firefly_endpoint" {
  type = string
}

variable "firefly_cross_account_access_role_arn" {
  type = string
}

variable "full_scan_enabled" {
  type        = bool
  default     = true
  description = "Full scan enabled?"
}

variable is_prod {
  type        = bool
  default     = false
  description = "Is Production?"
}