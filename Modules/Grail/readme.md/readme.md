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
| [dynatrace_segment.example](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/segment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_segments"></a> [segments](#input\_segments) | List of segments to be created. | <pre>list(object({<br/>    name        = string<br/>    description = string<br/>    is_public   = bool<br/>    includes    = list(object({<br/>      data_object       = string<br/>      filter            = string<br/>      relationship_name = string<br/>      relationship_target = string<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_variables_type"></a> [variables\_type](#input\_variables\_type) | Type of the variable used in the segment. | `string` | `"query"` | no |
| <a name="input_variables_value"></a> [variables\_value](#input\_variables\_value) | Value of the variable used in the segment. | `string` | `"fetch dt.entity.kubernetes_cluster | fields cluster = entity.name | sort cluster"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_segment_ids"></a> [segment\_ids](#output\_segment\_ids) | The IDs of the created Dynatrace segments. |
| <a name="output_segment_names"></a> [segment\_names](#output\_segment\_names) | The names of the created Dynatrace segments. |
