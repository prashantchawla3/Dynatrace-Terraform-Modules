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
| [dynatrace_github_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/github_connection) | resource |
| [dynatrace_gitlab_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/gitlab_connection) | resource |
| [dynatrace_jenkins_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/jenkins_connection) | resource |
| [dynatrace_ms365_email_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/ms365_email_connection) | resource |
| [dynatrace_msentraid_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/msentraid_connection) | resource |
| [dynatrace_msteams_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/msteams_connection) | resource |
| [dynatrace_pagerduty_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/pagerduty_connection) | resource |
| [dynatrace_servicenow_connection.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/servicenow_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dynatrace_api_token"></a> [dynatrace\_api\_token](#input\_dynatrace\_api\_token) | API token for Dynatrace (sensitive). | `string` | n/a | yes |
| <a name="input_dynatrace_api_url"></a> [dynatrace\_api\_url](#input\_dynatrace\_api\_url) | Dynatrace environment URL. | `string` | n/a | yes |
| <a name="input_github_connections"></a> [github\_connections](#input\_github\_connections) | List of GitHub connection configs. | <pre>list(object({<br/>    name  = string<br/>    type  = string  # e.g. "Pat"<br/>    token = string  # Personal Access Token (sensitive)<br/>  }))</pre> | n/a | yes |
| <a name="input_gitlab_connections"></a> [gitlab\_connections](#input\_gitlab\_connections) | List of GitLab connection configs. | <pre>list(object({<br/>    name  = string<br/>    url   = string<br/>    token = string  # Access token (sensitive)<br/>  }))</pre> | n/a | yes |
| <a name="input_jenkins_connections"></a> [jenkins\_connections](#input\_jenkins\_connections) | List of Jenkins connection configs. | <pre>list(object({<br/>    name     = string<br/>    url      = string<br/>    username = string<br/>    password = string  # API token or password (sensitive at callsite)<br/>  }))</pre> | n/a | yes |
| <a name="input_ms365_email_connections"></a> [ms365\_email\_connections](#input\_ms365\_email\_connections) | List of Microsoft 365 email connection configs. | <pre>list(object({<br/>    name          = string<br/>    client_id     = string<br/>    tenant_id     = string<br/>    from_address  = string<br/>    type          = string   # e.g. "client_secret"<br/>    client_secret = string   # Client secret (sensitive)<br/>  }))</pre> | n/a | yes |
| <a name="input_msentraid_connections"></a> [msentraid\_connections](#input\_msentraid\_connections) | List of Microsoft Entra ID (formerly Azure AD) connection configs. | <pre>list(object({<br/>    name            = string<br/>    application_id  = string<br/>    directory_id    = string<br/>    client_secret   = string  # Client secret (sensitive)<br/>    description     = optional(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_msteams_connections"></a> [msteams\_connections](#input\_msteams\_connections) | List of Microsoft Teams connection configs. | <pre>list(object({<br/>    name        = string<br/>    webhook     = string<br/>    team_name   = optional(string)<br/>    channel_name = optional(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_pagerduty_connections"></a> [pagerduty\_connections](#input\_pagerduty\_connections) | List of PagerDuty connection configs. | <pre>list(object({<br/>    name  = string<br/>    token = string  # PagerDuty API token (sensitive)<br/>    url   = string<br/>  }))</pre> | n/a | yes |
| <a name="input_servicenow_connections"></a> [servicenow\_connections](#input\_servicenow\_connections) | List of ServiceNow connection configs. | <pre>list(object({<br/>    name     = string<br/>    url      = string<br/>    type     = string   # e.g. "basic"<br/>    user     = optional(string)<br/>    password = optional(string)  # ServiceNow password (sensitive)<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_github_connection_ids"></a> [github\_connection\_ids](#output\_github\_connection\_ids) | IDs of GitHub connections |
| <a name="output_gitlab_connection_ids"></a> [gitlab\_connection\_ids](#output\_gitlab\_connection\_ids) | IDs of GitLab connections |
| <a name="output_jenkins_connection_ids"></a> [jenkins\_connection\_ids](#output\_jenkins\_connection\_ids) | IDs of Jenkins connections |
| <a name="output_ms365_email_connection_ids"></a> [ms365\_email\_connection\_ids](#output\_ms365\_email\_connection\_ids) | IDs of Microsoft 365 email connections |
| <a name="output_msentraid_connection_ids"></a> [msentraid\_connection\_ids](#output\_msentraid\_connection\_ids) | IDs of Microsoft Entra ID connections |
| <a name="output_msteams_connection_ids"></a> [msteams\_connection\_ids](#output\_msteams\_connection\_ids) | IDs of Microsoft Teams connections |
| <a name="output_pagerduty_connection_ids"></a> [pagerduty\_connection\_ids](#output\_pagerduty\_connection\_ids) | IDs of PagerDuty connections |
| <a name="output_servicenow_connection_ids"></a> [servicenow\_connection\_ids](#output\_servicenow\_connection\_ids) | IDs of ServiceNow connections |
