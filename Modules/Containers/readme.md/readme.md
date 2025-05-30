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
| [dynatrace_container_builtin_rule.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/container_builtin_rule) | resource |
| [dynatrace_container_registry.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/container_registry) | resource |
| [dynatrace_container_rule.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/container_rule) | resource |
| [dynatrace_container_technology.this](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/container_technology) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bosh_process_manager"></a> [bosh\_process\_manager](#input\_bosh\_process\_manager) | Enable monitoring for BOSH | `bool` | `false` | no |
| <a name="input_builtin_rule_enabled"></a> [builtin\_rule\_enabled](#input\_builtin\_rule\_enabled) | Enable or disable creation of dynatrace\_container\_builtin\_rule | `bool` | `true` | no |
| <a name="input_container_registry"></a> [container\_registry](#input\_container\_registry) | Container registry to configure | `string` | `""` | no |
| <a name="input_container_rule_enabled"></a> [container\_rule\_enabled](#input\_container\_rule\_enabled) | Enable or disable creation of dynatrace\_container\_rule | `bool` | `true` | no |
| <a name="input_container_rule_mode"></a> [container\_rule\_mode](#input\_container\_rule\_mode) | Mode of the container rule (e.g., EXCLUDE) | `string` | `"EXCLUDE"` | no |
| <a name="input_container_rule_operator"></a> [container\_rule\_operator](#input\_container\_rule\_operator) | Operator to use for the rule (e.g., EQUALS) | `string` | `"EQUALS"` | no |
| <a name="input_container_rule_property"></a> [container\_rule\_property](#input\_container\_rule\_property) | Property to match in the rule (e.g., CONTAINER\_NAME) | `string` | `"CONTAINER_NAME"` | no |
| <a name="input_container_rule_value"></a> [container\_rule\_value](#input\_container\_rule\_value) | Value to match in the rule | `string` | `""` | no |
| <a name="input_containerd"></a> [containerd](#input\_containerd) | Enable monitoring for containerd | `bool` | `true` | no |
| <a name="input_crio"></a> [crio](#input\_crio) | Enable monitoring for CRI-O | `bool` | `true` | no |
| <a name="input_docker"></a> [docker](#input\_docker) | Enable monitoring for Docker | `bool` | `true` | no |
| <a name="input_docker_windows"></a> [docker\_windows](#input\_docker\_windows) | Enable monitoring for Docker on Windows | `bool` | `false` | no |
| <a name="input_garden"></a> [garden](#input\_garden) | Enable monitoring for Garden | `bool` | `false` | no |
| <a name="input_ignore_docker_pause_container"></a> [ignore\_docker\_pause\_container](#input\_ignore\_docker\_pause\_container) | Disable monitoring of Docker pause containers | `bool` | `false` | no |
| <a name="input_ignore_kubernetes_pause_container"></a> [ignore\_kubernetes\_pause\_container](#input\_ignore\_kubernetes\_pause\_container) | Disable monitoring of Kubernetes pause containers | `bool` | `false` | no |
| <a name="input_ignore_open_shift_build_pod_name"></a> [ignore\_open\_shift\_build\_pod\_name](#input\_ignore\_open\_shift\_build\_pod\_name) | Disable monitoring of OpenShift build pod containers | `bool` | `false` | no |
| <a name="input_ignore_open_shift_sdn_namespace"></a> [ignore\_open\_shift\_sdn\_namespace](#input\_ignore\_open\_shift\_sdn\_namespace) | Disable monitoring of containers in OpenShift SDN namespace | `bool` | `false` | no |
| <a name="input_podman"></a> [podman](#input\_podman) | Enable monitoring for Podman | `bool` | `false` | no |
| <a name="input_registry_enabled"></a> [registry\_enabled](#input\_registry\_enabled) | Enable or disable creation of dynatrace\_container\_registry | `bool` | `true` | no |
| <a name="input_scope"></a> [scope](#input\_scope) | Scope for the container technology (e.g., environment scope) | `string` | `""` | no |
| <a name="input_technology_enabled"></a> [technology\_enabled](#input\_technology\_enabled) | Enable or disable creation of dynatrace\_container\_technology | `bool` | `true` | no |
| <a name="input_winc"></a> [winc](#input\_winc) | Enable monitoring for Windows containers (winc) | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_builtin_rule_id"></a> [container\_builtin\_rule\_id](#output\_container\_builtin\_rule\_id) | ID of the built-in container monitoring rule |
| <a name="output_container_registry_id"></a> [container\_registry\_id](#output\_container\_registry\_id) | ID of the container registry |
| <a name="output_container_rule_id"></a> [container\_rule\_id](#output\_container\_rule\_id) | ID of the container rule |
| <a name="output_container_technology_id"></a> [container\_technology\_id](#output\_container\_technology\_id) | ID of the container technology config |
