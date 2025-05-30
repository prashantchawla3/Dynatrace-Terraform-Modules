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
| [dynatrace_aix_extension.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/aix_extension) | resource |
| [dynatrace_crashdump_analytics.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/crashdump_analytics) | resource |
| [dynatrace_disk_analytics.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/disk_analytics) | resource |
| [dynatrace_ebpf_service_discovery.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/ebpf_service_discovery) | resource |
| [dynatrace_host_monitoring.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/host_monitoring) | resource |
| [dynatrace_host_monitoring_advanced.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/host_monitoring_advanced) | resource |
| [dynatrace_host_monitoring_mode.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/host_monitoring_mode) | resource |
| [dynatrace_host_naming.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/host_naming) | resource |
| [dynatrace_host_naming_order.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/host_naming_order) | resource |
| [dynatrace_host_process_group_monitoring.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/host_process_group_monitoring) | resource |
| [dynatrace_nettracer.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/nettracer) | resource |
| [dynatrace_network_traffic.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/network_traffic) | resource |
| [dynatrace_os_services.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/os_services) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aix_extensions"></a> [aix\_extensions](#input\_aix\_extensions) | List of AIX extensions to be configured. | <pre>list(object({<br/>    host_id             = string<br/>    use_global_settings = bool<br/>    enabled             = bool<br/>  }))</pre> | n/a | yes |
| <a name="input_crashdump_analytics"></a> [crashdump\_analytics](#input\_crashdump\_analytics) | List of crash dump analytics configurations. | <pre>list(object({<br/>    host_id                   = string<br/>    enable_crash_dump_analytics = bool<br/>  }))</pre> | n/a | yes |
| <a name="input_disk_analytics"></a> [disk\_analytics](#input\_disk\_analytics) | List of disk analytics configurations. | <pre>list(object({<br/>    enabled = bool<br/>    scope   = string<br/>  }))</pre> | n/a | yes |
| <a name="input_ebpf_service_discovery"></a> [ebpf\_service\_discovery](#input\_ebpf\_service\_discovery) | List of eBPF service discovery configurations. | <pre>list(object({<br/>    ebpf  = bool<br/>    scope = string<br/>  }))</pre> | n/a | yes |
| <a name="input_host_monitoring"></a> [host\_monitoring](#input\_host\_monitoring) | List of host monitoring configurations. | <pre>list(object({<br/>    enabled = bool<br/>    host_id = string<br/>  }))</pre> | n/a | yes |
| <a name="input_host_monitoring_advanced"></a> [host\_monitoring\_advanced](#input\_host\_monitoring\_advanced) | List of advanced host monitoring configurations. | <pre>list(object({<br/>    host_id                 = string<br/>    process_agent_injection = bool<br/>    code_module_injection   = bool<br/>  }))</pre> | n/a | yes |
| <a name="input_host_monitoring_modes"></a> [host\_monitoring\_modes](#input\_host\_monitoring\_modes) | List of host monitoring modes configurations. | <pre>list(object({<br/>    host_id           = string<br/>    monitoring_mode   = string<br/>  }))</pre> | n/a | yes |
| <a name="input_host_naming"></a> [host\_naming](#input\_host\_naming) | List of host naming configurations. | <pre>list(object({<br/>    enabled = bool<br/>    format  = string<br/>    name    = string<br/>  }))</pre> | n/a | yes |
| <a name="input_host_naming_orders"></a> [host\_naming\_orders](#input\_host\_naming\_orders) | List of host naming orders configurations. | <pre>list(object({<br/>    naming_rule_ids = list(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_host_process_group_monitoring"></a> [host\_process\_group\_monitoring](#input\_host\_process\_group\_monitoring) | List of host process group monitoring configurations. | <pre>list(object({<br/>    host_id           = string<br/>    monitoring_state  = string<br/>    process_group     = string<br/>  }))</pre> | n/a | yes |
| <a name="input_net_tracers"></a> [net\_tracers](#input\_net\_tracers) | List of network tracer configurations. | <pre>list(object({<br/>    scope      = string<br/>    net_tracer = string<br/>  }))</pre> | n/a | yes |
| <a name="input_network_traffic"></a> [network\_traffic](#input\_network\_traffic) | List of network traffic configurations. | <pre>list(object({<br/>    host_id = string<br/>    ip_address  = string<br/>    interface   = string<br/>    os          = string<br/>  }))</pre> | n/a | yes |
| <a name="input_os_services"></a> [os\_services](#input\_os\_services) | List of OS service configurations. | <pre>list(object({<br/>    name                      = string<br/>    enabled                   = bool<br/>    alert_activation_duration = string<br/>    alerting                  = bool<br/>    monitoring                = bool<br/>    not_installed_alerting    = bool<br/>    scope                     = string<br/>    status_condition_linux    = string<br/>    system                    = string<br/>    condition                = string<br/>    property                 = string<br/>    metadata_key             = string<br/>    metadata_value           = string<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aix_extension_ids"></a> [aix\_extension\_ids](#output\_aix\_extension\_ids) | The IDs of the created AIX extensions. |
| <a name="output_crashdump_analytics_ids"></a> [crashdump\_analytics\_ids](#output\_crashdump\_analytics\_ids) | The IDs of the created crash dump analytics configurations. |
| <a name="output_disk_analytics_ids"></a> [disk\_analytics\_ids](#output\_disk\_analytics\_ids) | The IDs of the created disk analytics configurations. |
| <a name="output_host_monitoring_ids"></a> [host\_monitoring\_ids](#output\_host\_monitoring\_ids) | The IDs of the created host monitoring configurations. |
| <a name="output_host_process_group_monitoring_ids"></a> [host\_process\_group\_monitoring\_ids](#output\_host\_process\_group\_monitoring\_ids) | The IDs of the created host process group monitoring configurations. |
