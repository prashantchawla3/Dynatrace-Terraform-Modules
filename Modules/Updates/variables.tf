variable "environment_url" {
  description = "The base URL of the Dynatrace environment"
  type        = string
  default     = ""
}

variable "dynatrace_client_id" {
  description = "Client ID for Dynatrace API authentication"
  type        = string
  default     = ""
}

variable "dynatrace_client_secret" {
  description = "Client secret for Dynatrace API authentication"
  type        = string
  sensitive   = true
  default     = ""
}

variable "auto_update" {
  description = "Enable or disable auto-update for ActiveGate"
  type        = bool
  default     = false
}

variable "scope_activegate" {
  description = "Scope selector for applying ActiveGate updates"
  type        = string
  default     = ""
}

variable "scope_oneagent" {
  description = "Scope selector for applying OneAgent updates"
  type        = string
  default     = ""
}

variable "target_version" {
  description = "Target OneAgent version to update to"
  type        = string
  default     = ""
}

variable "update_mode" {
  description = "Update mode for OneAgent (e.g., 'auto', 'manual')"
  type        = string
  default     = ""
}

variable "name" {
  description = "Name of the maintenance/update window"
  type        = string
  default     = ""
}

variable "enabled" {
  description = "Enable or disable the update window"
  type        = bool
  default     = false
}

variable "recurrence" {
  description = "Recurrence pattern for the update window (e.g., 'ONCE', 'WEEKLY')"
  type        = string
  default     = ""
}

variable "once_recurrence_end" {
  description = "End timestamp for a one-time update window (RFC3339 format)"
  type        = string
  default     = ""
}

variable "once_recurrence_start" {
  description = "Start timestamp for a one-time update window (RFC3339 format)"
  type        = string
  default     = ""
}
