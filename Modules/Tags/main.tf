resource "dynatrace_autotag" "this" {
  name = var.autotag_name

  rules {
    conditions {
      string {
        negate         = var.string_condition_negate
        operator       = var.string_condition_operator
        value          = var.string_condition_value
        case_sensitive = var.string_condition_case_sensitive
      }
      key {
        attribute = var.string_condition_key_attribute
        type      = var.string_condition_key_type
      }
    }

    conditions {
      service_topology {
        negate   = var.service_topology_negate
        operator = var.service_topology_operator
        value    = var.service_topology_value
      }
      key {
        attribute = var.service_topology_key_attribute
        type      = var.service_topology_key_type
      }
    }

    enabled       = var.rules_enabled
    type          = var.rules_type
    value_format  = var.rules_value_format
    normalization = var.rules_normalization
  }
}

resource "dynatrace_custom_tags" "this" {
  entity_selector = var.entity_selector

  tags {
    dynamic "filter" {
      for_each = var.custom_tags_filters
      content {
        context = filter.value.context
        key     = filter.value.key
        value   = lookup(filter.value, "value", null)
      }
    }
  }
}
