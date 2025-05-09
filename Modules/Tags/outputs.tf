
output "autotag_name" {
  value       = dynatrace_autotag.this.name
  description = "Name of the created Dynatrace auto tag"
}

output "custom_tags_selector" {
  value       = dynatrace_custom_tags.this.entity_selector
  description = "Entity selector for the custom tags"
}
