variable "product_domain" {
  type        = "string"
  description = "The name of the product domain"
}

variable "cluster" {
  type        = "string"
  description = "The name of the cluster"
}

variable "thresholds_api_exception" {
  type        = "map"
  description = "The warning and critical thresholds for API Exception monitoring"
}

variable "message_api_exception" {
  type        = "string"
  default     = ""
  description = "The message when API Exception monitor triggered"
}

variable "escalation_message_api_exception" {
  type        = "string"
  default     = ""
  description = "The escalation message when API Exception monitor isn't resolved for given time"
}

variable "recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when monitor triggered"
}

variable "renotify_interval" {
  type        = "string"
  default     = "0"
  description = "Time interval in minutes which escalation_message will be sent when monitor is triggered"
}

variable "notify_audit" {
  type        = "string"
  default     = false
  description = "Whether any configuration changes should be notified"
}

variable "enabled" {
  type        = "string"
  default     = true
  description = "To enable this module"
}
