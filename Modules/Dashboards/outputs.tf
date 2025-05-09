output "dashboard_names" {
  description = "List of dashboard names"
  value       = [for dashboard in var.dashboards : dashboard.name]
}

output "dashboard_ids" {
  description = "List of dashboard IDs"
  value       = [for dashboard in var.dashboards : dashboard.dashboard_id]
}

output "dashboard_sharing" {
  description = "List of dashboard sharing settings"
  value       = [for dashboard in var.dashboards : dashboard.sharing]
}

output "widget_names" {
  description = "List of widget names"
  value       = flatten([for dashboard in var.dashboards : [for widget in dashboard.widgets : widget.name]])
}

output "widget_positions" {
  description = "List of widget positions"
  value       = flatten([for dashboard in var.dashboards : [for widget in dashboard.widgets : widget.position]])
}
