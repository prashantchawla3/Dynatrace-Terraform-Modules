output "alerting_profile_id" {
  value = dynatrace_alerting_profile.this.id
}

output "maintenance_window_id" {
  value = dynatrace_maintenance.this.id
}