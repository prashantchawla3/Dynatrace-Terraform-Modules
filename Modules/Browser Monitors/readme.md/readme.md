## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_dynatrace"></a> [dynatrace](#requirement\_dynatrace) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dynatrace"></a> [dynatrace](#provider\_dynatrace) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [dynatrace_browser_monitor.monitor](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/browser_monitor) | resource |
| [dynatrace_browser_monitor_outage.outage](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/browser_monitor_outage) | resource |
| [dynatrace_browser_monitor_performance.performance](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/browser_monitor_performance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_browser_monitors"></a> [browser\_monitors](#input\_browser\_monitors) | List of Dynatrace browser monitors to create. Each object includes all settings. | <pre>list(object({<br/>    name       = string<br/>    frequency  = number<br/>    enabled    = optional(bool, true)<br/>    locations  = optional(list(string), [])<br/>    tags       = optional(list(string), [])<br/>    # Device profile settings (screen, UA)<br/>    device_profile = optional(object({<br/>      screen_width  = number<br/>      screen_height = number<br/>      user_agent    = optional(string)<br/>      # ... other profile fields ...<br/>    }), null)<br/>    # Key performance metrics settings<br/>    key_performance_metrics = optional(object({<br/>      load_action_kpm = string<br/>      xhr_action_kpm  = string<br/>    }), null)<br/>    # Anomaly detection (optional)<br/>    anomaly_detection = optional(object({<br/>      enabled = bool<br/>      # ... more anomaly fields ...<br/>    }), null)<br/>    # Synthetic script (clickpath or single-URL)<br/>    script = optional(list(object({<br/>      type   = string<br/>      events = list(object({<br/>        description = optional(string)<br/>        navigate = optional(object({<br/>          url = string<br/>          wait = optional(object({<br/>            wait_for = string<br/>            timeout  = number<br/>          }), null)<br/>        }), null)<br/>        click = optional(object({<br/>          target = object({<br/>            locators = list(object({ type = string, value = string }))<br/>          })<br/>          wait = optional(object({<br/>            wait_for = string<br/>            timeout  = number<br/>          }), null)<br/>        }), null)<br/>        keystrokes = optional(object({<br/>          text   = string<br/>          target = object({<br/>            locators = list(object({ type = string, value = string }))<br/>          })<br/>          validate = optional(object({<br/>            type          = string<br/>            fail_if_found = bool<br/>            ignore_case   = bool<br/>            # ... additional validate fields ...<br/>          }), null)<br/>        }), null)<br/>        # ... other event types (javascript, navigate-back, etc.) ...<br/>      }))<br/>    })), null)<br/>    # Outage settings (optional object; null means none)<br/>    outage = optional(object({<br/>      global_outages                           = optional(bool)<br/>      local_outages                            = optional(bool)<br/>      retry_on_error                           = optional(bool)<br/>      global_consecutive_outage_count_threshold = optional(number)<br/>      local_consecutive_outage_count_threshold  = optional(number)<br/>      local_location_outage_count_threshold     = optional(number)<br/>      # scope can be added if needed: scope = optional(string)<br/>    }), null)<br/>    # Performance settings (optional)<br/>    performance = optional(object({<br/>      enabled    = bool<br/>      scope      = optional(string)<br/>      thresholds = optional(list(object({<br/>        event     = string<br/>        threshold = number<br/>      })), [])<br/>    }), null)<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_browser_monitor_ids"></a> [browser\_monitor\_ids](#output\_browser\_monitor\_ids) | Map of browser monitor names to their Dynatrace IDs |
| <a name="output_browser_monitor_outage_ids"></a> [browser\_monitor\_outage\_ids](#output\_browser\_monitor\_outage\_ids) | Map of browser monitor names to their outage config IDs (if created) |
| <a name="output_browser_monitor_performance_ids"></a> [browser\_monitor\_performance\_ids](#output\_browser\_monitor\_performance\_ids) | Map of browser monitor names to their performance config IDs (if created) |
