variable "slo_name" {
  description = "The name of the SLO (Service Level Objective)."
  type        = string
  default     = ""
}

variable "slo_enabled" {
  description = "Flag to enable or disable the SLO."
  type        = bool
  default     = true
}

variable "slo_description" {
  description = "A brief description of the SLO."
  type        = string
  default     = ""
}

variable "slo_evaluation_type" {
  description = "The evaluation type for the SLO."
  type        = string
  default     = ""
}

variable "slo_evaluation_window" {
  description = "The time window for the SLO evaluation."
  type        = string
  default     = ""
}

variable "slo_filter" {
  description = "The filter applied to the SLO."
  type        = string
  default     = ""
}

variable "slo_metric_expression" {
  description = "The metric expression for the SLO."
  type        = string
  default     = ""
}

variable "slo_metric_name" {
  description = "The name of the metric used for the SLO."
  type        = string
  default     = ""
}

variable "slo_target_success" {
  description = "The target success percentage for the SLO."
  type        = number
  default     = 100
}

variable "slo_target_warning" {
  description = "The target warning percentage for the SLO."
  type        = number
  default     = 95
}

variable "slo_legacy_id" {
  description = "The legacy ID for the SLO (if applicable)."
  type        = string
  default     = ""
}

variable "burn_rate_visualization_enabled" {
  description = "Enable burn rate visualization for the SLO."
  type        = bool
  default     = false
}

variable "fast_burn_threshold" {
  description = "The threshold for fast burn visualization (optional)."
  type        = number
  default     = null
}
