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
| [dynatrace_aws_credentials.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/aws_credentials) | resource |
| [dynatrace_aws_service.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/aws_service) | resource |
| [dynatrace_azure_credentials.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/azure_credentials) | resource |
| [dynatrace_azure_service.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/azure_service) | resource |
| [dynatrace_credentials.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/credentials) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authentication_data"></a> [authentication\_data](#input\_authentication\_data) | AWS authentication details | <pre>object({<br/>    account_id = string<br/>    iam_role   = string<br/>    access_key = optional(string)<br/>    secret_key = optional(string)<br/>  })</pre> | n/a | yes |
| <a name="input_aws_services"></a> [aws\_services](#input\_aws\_services) | AWS services to monitor with recommended metrics toggle | <pre>map(object({<br/>    use_recommended_metrics = bool<br/>  }))</pre> | `{}` | no |
| <a name="input_azure_active"></a> [azure\_active](#input\_azure\_active) | Activate Azure monitoring | `bool` | n/a | yes |
| <a name="input_azure_app_id"></a> [azure\_app\_id](#input\_azure\_app\_id) | Azure App ID | `string` | n/a | yes |
| <a name="input_azure_auto_tagging"></a> [azure\_auto\_tagging](#input\_azure\_auto\_tagging) | Enable auto-tagging for Azure resources | `bool` | n/a | yes |
| <a name="input_azure_directory_id"></a> [azure\_directory\_id](#input\_azure\_directory\_id) | Azure Directory ID (Tenant ID) | `string` | n/a | yes |
| <a name="input_azure_key"></a> [azure\_key](#input\_azure\_key) | Azure client secret | `string` | n/a | yes |
| <a name="input_azure_label"></a> [azure\_label](#input\_azure\_label) | Label for Azure credentials | `string` | n/a | yes |
| <a name="input_azure_monitor_only_tag_pairs"></a> [azure\_monitor\_only\_tag\_pairs](#input\_azure\_monitor\_only\_tag\_pairs) | Azure tag name-value pairs for filtering | <pre>list(object({<br/>    name  = string<br/>    value = string<br/>  }))</pre> | `[]` | no |
| <a name="input_azure_monitor_only_tagged_entities"></a> [azure\_monitor\_only\_tagged\_entities](#input\_azure\_monitor\_only\_tagged\_entities) | Monitor only tagged Azure resources | `bool` | n/a | yes |
| <a name="input_azure_remove_defaults"></a> [azure\_remove\_defaults](#input\_azure\_remove\_defaults) | Remove default Azure services added by Dynatrace | `bool` | `false` | no |
| <a name="input_azure_services"></a> [azure\_services](#input\_azure\_services) | Azure services to monitor with recommended metrics toggle | <pre>map(object({<br/>    use_recommended_metrics = bool<br/>  }))</pre> | `{}` | no |
| <a name="input_credentials_enabled"></a> [credentials\_enabled](#input\_credentials\_enabled) | Enable monitoring for this AWS credential | `bool` | `true` | no |
| <a name="input_credentials_name"></a> [credentials\_name](#input\_credentials\_name) | Name for generic Dynatrace credentials | `string` | n/a | yes |
| <a name="input_credentials_password"></a> [credentials\_password](#input\_credentials\_password) | Password for Dynatrace credentials | `string` | n/a | yes |
| <a name="input_credentials_scopes"></a> [credentials\_scopes](#input\_credentials\_scopes) | Scopes for the Dynatrace credentials | `list(string)` | n/a | yes |
| <a name="input_credentials_username"></a> [credentials\_username](#input\_credentials\_username) | Username for Dynatrace credentials | `string` | n/a | yes |
| <a name="input_label"></a> [label](#input\_label) | Label for AWS credentials | `string` | n/a | yes |
| <a name="input_partition_type"></a> [partition\_type](#input\_partition\_type) | AWS partition type (e.g., AWS\_DEFAULT, AWS\_CN, AWS\_US\_GOV) | `string` | n/a | yes |
| <a name="input_remove_defaults"></a> [remove\_defaults](#input\_remove\_defaults) | Remove default supporting services added by Dynatrace | `bool` | `false` | no |
| <a name="input_running_on_dynatrace_infrastructure"></a> [running\_on\_dynatrace\_infrastructure](#input\_running\_on\_dynatrace\_infrastructure) | Run on Dynatrace-managed infrastructure | `bool` | `false` | no |
| <a name="input_tagged_only"></a> [tagged\_only](#input\_tagged\_only) | Whether to monitor only tagged resources | `bool` | n/a | yes |
| <a name="input_tags_to_monitor"></a> [tags\_to\_monitor](#input\_tags\_to\_monitor) | List of AWS tags to monitor (max 10) | <pre>list(object({<br/>    name  = string<br/>    value = string<br/>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_credentials_id"></a> [aws\_credentials\_id](#output\_aws\_credentials\_id) | n/a |
| <a name="output_azure_credentials_id"></a> [azure\_credentials\_id](#output\_azure\_credentials\_id) | n/a |
| <a name="output_dynatrace_credentials_id"></a> [dynatrace\_credentials\_id](#output\_dynatrace\_credentials\_id) | n/a |
