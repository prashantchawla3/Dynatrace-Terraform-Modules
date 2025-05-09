# Process Monitoring Configuration
variable "process_availability_enabled" {
  description = "Enable process availability monitoring"
  type        = bool
}

variable "process_availability_name" {
  description = "The name of the process availability"
  type        = string
}

variable "process_availability_rule_property" {
  description = "The property to use for process availability rule"
  type        = string
}

variable "process_availability_rule_condition" {
  description = "Condition for the process availability rule"
  type        = string
}

variable "process_availability_metadata_key" {
  description = "Metadata key for process availability"
  type        = string
}

variable "process_availability_metadata_value" {
  description = "Metadata value for process availability"
  type        = string
}

# Process Monitoring Rules
variable "process_monitoring_host_group_id" {
  description = "Host group ID for process monitoring"
  type        = string
}

variable "process_monitoring_auto_monitoring" {
  description = "Enable auto monitoring for process monitoring"
  type        = bool
}

variable "process_monitoring_rule_enabled" {
  description = "Enable the process monitoring rule"
  type        = bool
}

variable "process_monitoring_rule_mode" {
  description = "Mode for the process monitoring rule"
  type        = string
}

variable "process_monitoring_rule_host_group_id" {
  description = "Host group ID for the process monitoring rule"
  type        = string
}

variable "process_monitoring_rule_condition_item" {
  description = "Condition item for the process monitoring rule"
  type        = string
}

variable "process_monitoring_rule_condition_operator" {
  description = "Operator for the process monitoring rule condition"
  type        = string
}

variable "process_monitoring_rule_condition_value" {
  description = "Value for the process monitoring rule condition"
  type        = string
}

# Process Visibility Configuration
variable "process_visibility_enabled" {
  description = "Enable process visibility"
  type        = bool
}

variable "process_visibility_max_processes" {
  description = "Maximum number of processes for process visibility"
  type        = number
}

variable "process_visibility_scope" {
  description = "Scope for process visibility"
  type        = string
}

# Application and Container Configuration
variable "host_group_id" {
  description = "Host group ID"
  type        = string
}

variable "aspnetcore" {
  description = "Enable ASP.NET Core application monitoring"
  type        = bool
}

variable "cf_appsmanagerjs" {
  description = "Enable Cloud Foundry Apps Manager JS monitoring"
  type        = bool
}

variable "container" {
  description = "Enable container monitoring"
  type        = bool
}

variable "docker_pauseamd64" {
  description = "Enable Docker Pause AMD64 monitoring"
  type        = bool
}

variable "exe_bbs" {
  description = "Enable monitoring for BBS process"
  type        = bool
}

variable "exe_caddy" {
  description = "Enable monitoring for Caddy process"
  type        = bool
}

variable "exe_schedular" {
  description = "Enable monitoring for Scheduler process"
  type        = bool
}

variable "exe_silkdaemon" {
  description = "Enable monitoring for SilkDaemon process"
  type        = bool
}

variable "go_static" {
  description = "Enable monitoring for Go Static process"
  type        = bool
}

variable "node_nodegyp" {
  description = "Enable monitoring for Node.js Node-gyp process"
  type        = bool
}
