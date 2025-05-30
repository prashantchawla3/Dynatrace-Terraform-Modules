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
| [dynatrace_alerting.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/alerting) | resource |
| [dynatrace_connectivity_alerts.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/connectivity_alerts) | resource |
| [dynatrace_maintenance.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/maintenance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_connectivity_alerts"></a> [connectivity\_alerts](#input\_connectivity\_alerts) | Optional list of connectivity alert settings. <br/>Each entry requires:<br/>  - process\_group\_id (string): the Dynatrace Process Group ID<br/>  - enable (bool): true to enable TCP connectivity problem alerts | <pre>map(object({<br/>    process_group_id = string<br/>    enable           = bool<br/>  }))</pre> | `{}` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the alerting profile | `string` | `""` | no |
| <a name="input_filters"></a> [filters](#input\_filters) | List of event filters for the alerting profile. Each filter block can have:<br/>  - type: "PREDEFINED" or "CUSTOM"<br/>  - For PREDEFINED:<br/>      - predefined\_event\_type (string, e.g. "APPLICATION\_SLOWDOWN")<br/>      - predefined\_negate (bool)<br/>  - For CUSTOM:<br/>      - custom\_title\_operator (string, e.g. "CONTAINS")<br/>      - custom\_title\_value (string)<br/>      - custom\_title\_negate (bool)<br/>      - custom\_title\_enabled (bool)<br/>      - custom\_title\_case\_sensitive (bool)<br/>      - custom\_description\_operator, custom\_description\_value, etc. for description<br/>      - custom\_metadata: list of { key, value, negate } for event properties | <pre>list(object({<br/>    type                         = string<br/>    predefined_event_type        = optional(string)<br/>    predefined_negate            = optional(bool)<br/>    custom_title_operator        = optional(string)<br/>    custom_title_value           = optional(string)<br/>    custom_title_negate          = optional(bool)<br/>    custom_title_enabled         = optional(bool)<br/>    custom_title_case_sensitive  = optional(bool)<br/>    custom_description_operator  = optional(string)<br/>    custom_description_value     = optional(string)<br/>    custom_description_negate    = optional(bool)<br/>    custom_description_enabled   = optional(bool)<br/>    custom_description_case_sensitive = optional(bool)<br/>    custom_metadata              = optional(list(object({<br/>      key   = string<br/>      value = string<br/>      negate = bool<br/>    })))<br/>  }))</pre> | `[]` | no |
| <a name="input_maintenance_windows"></a> [maintenance\_windows](#input\_maintenance\_windows) | Optional list of maintenance window configurations. Each object can include:<br/>  - enabled (bool)<br/>  - name (string)<br/>  - description (string, optional)<br/>  - maintenance\_type (string, e.g. "PLANNED" or "UNPLANNED")<br/>  - suppression (string, e.g. "DETECT\_PROBLEMS\_DONT\_ALERT")<br/>  - disable\_synthetic (bool)<br/>  - management\_zones (list of IDs, optional)<br/>  - tags (list of strings, optional)<br/>  - entity\_id (string, optional)<br/>  - schedule\_type (string, "ONCE"/"DAILY"/"WEEKLY"/"MONTHLY")<br/>  - start\_date, end\_date (YYYY-MM-DD)<br/>  - start\_time, end\_time (HH:mm)<br/>  - time\_zone (string)<br/>  - days\_of\_week (list of strings, e.g. ["SATURDAY","SUNDAY"])<br/>  - day\_of\_month (number, e.g. 15) | <pre>map(object({<br/>    enabled     = bool<br/>    name        = string<br/>    description = optional(string)<br/>    maintenance_type = string<br/>    suppression = string<br/>    disable_synthetic = bool<br/>    management_zones = optional(list(string))<br/>    tags         = optional(list(string))<br/>    entity_id    = optional(string)<br/>    schedule_type   = string<br/>    start_date   = optional(string)<br/>    end_date     = optional(string)<br/>    start_time   = string<br/>    end_time     = string<br/>    time_zone    = string<br/>    days_of_week = optional(list(string))<br/>    day_of_month = optional(number)<br/>  }))</pre> | `{}` | no |
| <a name="input_management_zone_id"></a> [management\_zone\_id](#input\_management\_zone\_id) | ID (legacy ID) of the Dynatrace management zone to scope alerts | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Dynatrace alerting profile | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | List of severity rules for the alerting profile. <br/>Each rule requires:<br/>  - severity\_level: the problem type (e.g. "ERRORS", "PERFORMANCE")<br/>  - delay\_in\_minutes: minutes before sending notification<br/>  - include\_mode: tag inclusion mode ("NONE", "INCLUDE\_ANY", "INCLUDE\_ALL")<br/>Optional:<br/>  - tag\_filter\_include\_mode: another inclusion mode for tags<br/>  - tags: list of tags to filter on | <pre>list(object({<br/>    severity_level          = string<br/>    delay_in_minutes        = number<br/>    include_mode            = string<br/>    tag_filter_include_mode = optional(string)<br/>    tags                    = optional(list(string))<br/>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alerting_profile_id"></a> [alerting\_profile\_id](#output\_alerting\_profile\_id) | ID of the Dynatrace alerting profile |
| <a name="output_alerting_profile_legacy_id"></a> [alerting\_profile\_legacy\_id](#output\_alerting\_profile\_legacy\_id) | Legacy ID of the Dynatrace alerting profile (for older APIs) |
| <a name="output_connectivity_alerts_ids"></a> [connectivity\_alerts\_ids](#output\_connectivity\_alerts\_ids) | Map of connectivity alert resource IDs (by key) |
| <a name="output_maintenance_window_ids"></a> [maintenance\_window\_ids](#output\_maintenance\_window\_ids) | Map of maintenance window resource IDs (by key) |
