variable "name" {
  description = "The display name for the alerting profile"
  type        = string
}

variable "rules" {
  description = "List of rules for the alerting profile"
  type = list(object({
    severity_level   = string
    delay_in_minutes = number
    include_mode     = string
    tags             = optional(list(object({
      key   = string
      value = string
    })))
  }))
}

variable "general_properties" {
  description = "General properties for the maintenance window"
  type = object({
    name              = string
    description       = string
    type              = string
    disable_synthetic = bool
    suppression       = string
  })
}

variable "maintenance" {
  description = "Maintenance configuration"
  type = object({
    recurrence_type      = string
    weekly_recurrence    = optional(object({
      day_of_week       = string
      recurrence_range  = object({
        start_date = string
        end_date   = string
      })
      time_window = object({
        start_time = string
        end_time   = string
        time_zone  = string
      })
    }))
    filters             = list(object({
      entity_type = string
      entity_tags = list(string)
    }))
  })
}
