variable "dashboards" {
  description = "List of dashboards to be created"
  type = list(object({
    dashboard_id    = string
    name            = string
    description     = string
    layout_type     = string
    sharing         = string
    management_zone = string
    widgets         = list(object({
      name     = string
      type     = string
      size     = string
      position = string
      settings = map(string)
    }))
  }))
}

variable "variables_type" {
  description = "Type for variables in segments"
  type        = string
}

variable "variables_value" {
  description = "Value for variables in segments"
  type        = string
}
