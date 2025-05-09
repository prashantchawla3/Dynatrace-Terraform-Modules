output "calculated_synthetic_metric_id" {
  description = "The ID of the calculated synthetic metric."
  value       = var.enable_calculated_synthetic_metric ? dynatrace_calculated_synthetic_metric.example[0].id : null
}

output "synthetic_availability_id" {
  description = "The ID of the synthetic availability configuration."
  value       = var.enable_synthetic_availability ? dynatrace_synthetic_availability.example[0].id : null
}

output "synthetic_location_id" {
  description = "The ID of the synthetic location."
  value       = var.enable_synthetic_location ? dynatrace_synthetic_location.example[0].id : null
}
