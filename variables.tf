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

variable exist_integration {
  type        = bool
  default     = false
  description = "Whether the integration already exists or not"
}

variable "firefly_role_name" {
  default = "firefly-caa-role"
  type    = string
}

variable "firefly_deny_list_policy_name" {
  type        = string
  description = "The name for the Firefly deny policy generated"
  default     = "FireflyReadonlyPolicyDenyList"
}

variable full_scan_enabled {
  type        = bool
  default     = true
  description = "Full scan enabled?"
}

variable is_event_driven {
  type        = bool
  default     = false
  description = "Install Event driven?"
}

variable event_driven_regions {
  type        = list(string)
  description = "The list of regions to install firefly event driven in"
  default     = [
    "us-east-2", "us-east-1", "us-west-1", "us-west-2", "af-south-1", "ap-east-1", "ap-south-1", "ap-northeast-3",
    "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ca-central-1", "cn-north-1",
    "cn-northwest-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-south-1", "eu-west-3", "eu-north-1", "me-south-1",
    "sa-east-1"
  ]
}

variable "target_event_bus_arn" {
  type    = string
  default = "arn:aws:events:us-east-1:094724549126:event-bus/prod-stablefly-event-bus"
}

variable "profile" {
  default = ""
  type    = string
}

variable "external_id" {
  default = ""
  type    = string
}

variable "access_key" {
  default = ""
  type    = string
}

variable "secret_key" {
  default = ""
  type    = string
}

variable "session_name" {
  default = "firefly"
  type    = string
}

variable "buckets_by_region" {
  type        = map(list(string))
  description = ""
  default     = {}
}

variable "iac_events_sns" {
  default     = "arn:aws:sns:us-east-1:094724549126:firefly-iac-states-update-topic"
  description = "Firefly sns which receives s3 object events notification"
}

variable "use_config_service" {
  type        = bool
  default     = false
  description = "Allow Firefly to read the config service s3 objects"
}


variable "config_service_regions" {
  type        = list(string)
  description = "The list of regions to install firefly event driven in"
  default     = []
}