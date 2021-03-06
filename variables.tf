variable "firefly_access_key" {
  type        = string
  description = "Your authentication access_key"
}

variable "firefly_secret_key" {
  type        = string
  description = "Your authentication secret_key"
}

variable "name" {
  type        = string
  description = "Name of the AWS integration"
}

variable "role_external_id" {
  type        = string
  description = "The External Id for the Firefly role generated"
}

variable "firefly_endpoint" {
  type        = string
  description = "The Firefly endpoint to register account management"
  default     = "https://prodapi.gofirefly.io/api"
}

variable is_prod {
  type        = bool
  default     = false
  description = "Is Production?"
}

variable full_scan_enabled {
  type        = bool
  default     = true
  description = "Full scan enabled?"
}