resource "dynatrace_alerting_profile" "this" {
  display_name = var.name

  dynamic "rules" {
    for_each = var.rules
    content {
      severity_level   = rules.value.severity_level
      delay_in_minutes = rules.value.delay_in_minutes

      tag_filter {
        include_mode = rules.value.include_mode

        dynamic "tag_filters" {
          for_each = rules.value.tags != null ? rules.value.tags : []
          content {
            context = "CONTEXTLESS"
            key     = tag_filters.value.key
            value   = tag_filters.value.value
          }
        }
      }
    }
  }
}

resource "dynatrace_maintenance" "this" {
  enabled = true

  general_properties {
    name                = var.general_properties.name
    description         = var.general_properties.description
    type                = var.general_properties.type
    disable_synthetic   = var.general_properties.disable_synthetic
    suppression         = var.general_properties.suppression
  }

  schedule {
    type = var.maintenance.recurrence_type

    dynamic "weekly_recurrence" {
      for_each = var.maintenance.recurrence_type == "WEEKLY" ? [1] : []
      content {
        day_of_week = var.maintenance.weekly_recurrence.day_of_week
        recurrence_range {
          start_date = var.maintenance.weekly_recurrence.recurrence_range.start_date
          end_date   = var.maintenance.weekly_recurrence.recurrence_range.end_date
        }

        time_window {
          start_time = var.maintenance.weekly_recurrence.time_window.start_time
          end_time   = var.maintenance.weekly_recurrence.time_window.end_time
          time_zone  = var.maintenance.weekly_recurrence.time_window.time_zone
        }
      }
    }
  }

  filters {
    dynamic "filter" {
      for_each = var.maintenance.filters
      content {
        entity_type = filter.value.entity_type
        entity_tags = filter.value.entity_tags
      }
    }
  }
}

