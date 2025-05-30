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
| [dynatrace_disk_anomalies_v2.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/disk_anomalies_v2) | resource |
| [dynatrace_disk_anomaly_rules.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/disk_anomaly_rules) | resource |
| [dynatrace_disk_edge_anomaly_detectors.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/disk_edge_anomaly_detectors) | resource |
| [dynatrace_disk_specific_anomalies_v2.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/disk_specific_anomalies_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disk_anomalies"></a> [disk\_anomalies](#input\_disk\_anomalies) | List of configurations for dynatrace\_disk\_anomalies\_v2 resources | <pre>list(object({<br/>    # Unique name or identifier for this anomaly configuration (used to index resources)<br/>    name                     = string<br/>    enabled                  = bool<br/>    # Optional base attribute (e.g., "auto" or "custom" detection mode)<br/>    detection_mode           = optional(string)<br/><br/>    # Nested block for low inodes detection<br/>    disk_low_inodes_detection = optional(object({<br/>      enabled           = bool<br/>      # Custom thresholds for free inodes percentage<br/>      custom_thresholds = optional(list(object({<br/>        free_inodes_percentage = number<br/>        # Additional threshold parameters can be added here<br/>      })))<br/>    }))<br/><br/>    # Nested block for low disk space detection<br/>    disk_low_space_detection = optional(object({<br/>      enabled           = bool<br/>      custom_thresholds = optional(list(object({<br/>        free_disk_space_percentage = number<br/>        # Additional threshold parameters can be added here<br/>      })))<br/>    }))<br/><br/>    # Alerts nested blocks (example: severity and threshold)<br/>    alerts = optional(list(object({<br/>      severity_level = string<br/>      threshold      = number<br/>      # Other alert options can be added here<br/>    })))<br/><br/>    # Event properties to attach to triggered events<br/>    event_properties = optional(list(object({<br/>      key   = string<br/>      value = string<br/>    })))<br/><br/>    # Add other configurable options as needed<br/>  }))</pre> | `[]` | no |
| <a name="input_disk_anomaly_rules"></a> [disk\_anomaly\_rules](#input\_disk\_anomaly\_rules) | List of configurations for dynatrace\_disk\_anomaly\_rules resources | <pre>list(object({<br/>    name       = string<br/>    enabled    = bool<br/><br/>    # Example condition block for a rule<br/>    condition = optional(object({<br/>      property  = string<br/>      operator  = string<br/>      value     = number<br/>    }))<br/><br/>    event_properties = optional(list(object({<br/>      key   = string<br/>      value = string<br/>    })))<br/><br/>    alerts = optional(list(object({<br/>      severity_level = string<br/>      threshold      = number<br/>      # Other alert options...<br/>    })))<br/>  }))</pre> | `[]` | no |
| <a name="input_disk_edge_detectors"></a> [disk\_edge\_detectors](#input\_disk\_edge\_detectors) | List of configurations for dynatrace\_disk\_edge\_anomaly\_detectors resources | <pre>list(object({<br/>    name        = string<br/>    enabled     = bool<br/>    # Example additional properties<br/>    metric_name = optional(string)<br/>    threshold   = optional(number)<br/><br/>    event_properties = optional(list(object({<br/>      key   = string<br/>      value = string<br/>    })))<br/><br/>    alerts = optional(list(object({<br/>      severity_level = string<br/>      threshold      = number<br/>      # Other alert options...<br/>    })))<br/>  }))</pre> | `[]` | no |
| <a name="input_disk_specific_anomalies"></a> [disk\_specific\_anomalies](#input\_disk\_specific\_anomalies) | List of configurations for dynatrace\_disk\_specific\_anomalies\_v2 resources | <pre>list(object({<br/>    name    = string<br/>    enabled = bool<br/><br/>    # Nested block for low disk space detection<br/>    disk_low_space_detection = optional(object({<br/>      enabled = bool<br/>      custom_thresholds = optional(list(object({<br/>        free_disk_space_percentage = number<br/>        # Other threshold parameters...<br/>      })))<br/>    }))<br/><br/>    # Nested block for low inodes detection<br/>    disk_low_inodes_detection = optional(object({<br/>      enabled = bool<br/>      custom_thresholds = optional(list(object({<br/>        free_inodes_percentage = number<br/>        # Other threshold parameters...<br/>      })))<br/>    }))<br/><br/>    event_properties = optional(list(object({<br/>      key   = string<br/>      value = string<br/>    })))<br/><br/>    alerts = optional(list(object({<br/>      severity_level = string<br/>      threshold      = number<br/>      # Other alert options...<br/>    })))<br/>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_disk_anomalies_v2_ids"></a> [disk\_anomalies\_v2\_ids](#output\_disk\_anomalies\_v2\_ids) | IDs of created dynatrace\_disk\_anomalies\_v2 resources |
| <a name="output_disk_anomaly_rules_ids"></a> [disk\_anomaly\_rules\_ids](#output\_disk\_anomaly\_rules\_ids) | IDs of created dynatrace\_disk\_anomaly\_rules resources |
| <a name="output_disk_edge_anomaly_detectors_ids"></a> [disk\_edge\_anomaly\_detectors\_ids](#output\_disk\_edge\_anomaly\_detectors\_ids) | IDs of created dynatrace\_disk\_edge\_anomaly\_detectors resources |
| <a name="output_disk_specific_anomalies_v2_ids"></a> [disk\_specific\_anomalies\_v2\_ids](#output\_disk\_specific\_anomalies\_v2\_ids) | IDs of created dynatrace\_disk\_specific\_anomalies\_v2 resources |
