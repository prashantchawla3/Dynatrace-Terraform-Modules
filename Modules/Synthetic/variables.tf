variable "environment_url" {
  type        = string
  default     = ""
  description = "Dynatrace environment URL (e.g., https://<your-environment>.live.dynatrace.com)."
}

variable "dynatrace_client_id" {
  type        = string
  default     = ""
  description = "Dynatrace API client ID for authentication."
}

variable "dynatrace_client_secret" {
  type        = string
  sensitive   = true
  default     = ""
  description = "Dynatrace API client secret for authentication."
}

variable "calculated_synthetic_metric_name" {
  type        = string
  default     = ""
  description = "Name of the calculated synthetic metric."
}

variable "calculated_synthetic_metric_enabled" {
  type        = bool
  default     = false
  description = "Enable or disable the calculated synthetic metric."
}

variable "calculated_synthetic_metric_metric" {
  type        = string
  default     = ""
  description = "Metric key for the calculated synthetic metric."
}

variable "calculated_synthetic_metric_metric_key" {
  type        = string
  default     = ""
  description = "Unique metric key for the calculated metric."
}

variable "calculated_synthetic_metric_monitor_identifier" {
  type        = string
  default     = ""
  description = "Monitor identifier associated with the calculated synthetic metric."
}

variable "synthetic_availability_exclude_maintenance_windows" {
  type        = bool
  default     = false
  description = "Exclude maintenance windows from synthetic availability results."
}

variable "synthetic_location_name" {
  type        = string
  default     = ""
  description = "Name of the private synthetic location."
}

variable "synthetic_location_auto_update_chromium" {
  type        = bool
  default     = false
  description = "Whether the synthetic location should automatically update the Chromium browser."
}

variable "synthetic_location_availability_location_outage" {
  type        = bool
  default     = false
  description = "Consider location-wide outages for synthetic availability."
}

variable "synthetic_location_availability_node_outage" {
  type        = bool
  default     = false
  description = "Consider individual node outages for synthetic availability."
}

variable "synthetic_location_availability_notifications_enabled" {
  type        = bool
  default     = false
  description = "Enable outage notifications for the synthetic location."
}

variable "synthetic_location_city" {
  type        = string
  default     = ""
  description = "City where the synthetic location is deployed."
}

variable "synthetic_location_country_code" {
  type        = string
  default     = ""
  description = "ISO country code for the synthetic location."
}

variable "synthetic_location_deployment_type" {
  type        = string
  default     = ""
  description = "Deployment type of the synthetic location (e.g., PRIVATE)."
}

variable "synthetic_location_latitude" {
  type        = number
  default     = 0
  description = "Latitude coordinate of the synthetic location."
}

variable "synthetic_location_location_node_outage_delay_in_minutes" {
  type        = number
  default     = 0
  description = "Delay in minutes before a node outage is reported."
}

variable "synthetic_location_longitude" {
  type        = number
  default     = 0
  description = "Longitude coordinate of the synthetic location."
}

variable "synthetic_location_region_code" {
  type        = string
  default     = ""
  description = "Region code of the synthetic location."
}

variable "enable_calculated_synthetic_metric" {
  type        = bool
  default     = false
  description = "Flag to enable creation of calculated synthetic metric."
}

variable "enable_synthetic_availability" {
  type        = bool
  default     = false
  description = "Flag to enable synthetic availability resource."
}

variable "enable_synthetic_location" {
  type        = bool
  default     = false
  description = "Flag to enable private synthetic location creation."
}
