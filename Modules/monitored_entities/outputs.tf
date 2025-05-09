output "custom_device_id" {
  description = "The ID of the custom device"
  value       = dynatrace_custom_device.custom_device.custom_device_id
}

output "display_name" {
  description = "Display name of the custom device"
  value       = dynatrace_custom_device.custom_device.display_name
}
