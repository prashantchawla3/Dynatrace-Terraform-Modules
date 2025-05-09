resource "dynatrace_json_dashboard" "this" {
  count = length(var.dashboards)

  contents = jsonencode({
    id            = var.dashboards[count.index].dashboard_id
    name          = var.dashboards[count.index].name
    description   = var.dashboards[count.index].description
    layoutType    = var.dashboards[count.index].layout_type
    sharing       = var.dashboards[count.index].sharing
    managementZone = var.dashboards[count.index].management_zone
    widgets       = var.dashboards[count.index].widgets
  })
}
