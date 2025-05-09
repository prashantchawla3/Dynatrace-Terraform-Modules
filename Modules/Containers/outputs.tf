output "container_builtin_rule" {
  description = "The output for the container builtin rule configuration"
  value = dynatrace_container_builtin_rule.this
}

# Output for Container Registry Configuration
output "container_registry_configuration" {
  description = "The container registry configuration"
  value = dynatrace_container_registry.this
}

# Output for Container Rule
output "container_rule_configuration" {
  description = "The container rule configuration"
  value = dynatrace_container_rule.this
}

# Output for Container Technology Configuration
output "container_technology_configuration" {
  description = "The container technology configuration"
  value = dynatrace_container_technology.this
}
