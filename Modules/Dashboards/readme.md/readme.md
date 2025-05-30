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
| [dynatrace_json_dashboard.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/json_dashboard) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dashboards"></a> [dashboards](#input\_dashboards) | List of Dynatrace dashboards to be created | <pre>list(object({<br/>    name            = string<br/>    description     = string<br/>    dashboard_id    = string<br/>    layout_type     = string<br/>    sharing         = string<br/>    management_zone = string # Added management zone<br/>    widgets = list(object({<br/>      name      = string<br/>      type      = string<br/>      size      = string<br/>      position  = string<br/>      settings  = map(string)<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_dynatrace_api_token"></a> [dynatrace\_api\_token](#input\_dynatrace\_api\_token) | Dynatrace API Token | `string` | n/a | yes |
| <a name="input_dynatrace_api_url"></a> [dynatrace\_api\_url](#input\_dynatrace\_api\_url) | Dynatrace API URL | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dashboard_ids"></a> [dashboard\_ids](#output\_dashboard\_ids) | List of Dynatrace dashboard IDs |
| <a name="output_dashboard_management_zones"></a> [dashboard\_management\_zones](#output\_dashboard\_management\_zones) | List of Dynatrace dashboard management zones |
| <a name="output_dashboard_names"></a> [dashboard\_names](#output\_dashboard\_names) | List of Dynatrace dashboard names |
