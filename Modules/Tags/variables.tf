variable "autotag_name" {
  type        = string
  description = "Name for the Dynatrace auto tag"
  default     = ""
}

# ---- String Condition ----
variable "string_condition_negate" {
  type        = bool
  description = "Negate for string condition"
  default     = false
}

variable "string_condition_operator" {
  type        = string
  description = "Operator for string condition"
  default     = ""
}

variable "string_condition_value" {
  type        = string
  description = "Value for string condition"
  default     = ""
}

variable "string_condition_case_sensitive" {
  type        = bool
  description = "Case sensitivity for string condition"
  default     = false
}

variable "string_condition_key_attribute" {
  type        = string
  description = "Attribute for string condition key"
  default     = ""
}

variable "string_condition_key_type" {
  type        = string
  description = "Type for string condition key"
  default     = ""
}

# ---- Service Topology Condition ----
variable "service_topology_negate" {
  type        = bool
  description = "Negate for service topology condition"
  default     = false
}

variable "service_topology_operator" {
  type        = string
  description = "Operator for service topology condition"
  default     = ""
}

variable "service_topology_value" {
  type        = string
  description = "Value for service topology condition"
  default     = ""
}

variable "service_topology_key_attribute" {
  type        = string
  description = "Attribute for service topology key"
  default     = ""
}

variable "service_topology_key_type" {
  type        = string
  description = "Type for service topology key"
  default     = ""
}

# ---- Rule Attributes ----
variable "rules_enabled" {
  type        = bool
  description = "Whether the rule is enabled"
  default     = false
}

variable "rules_type" {
  type        = string
  description = "Type of the rule (e.g., SERVICE)"
  default     = ""
}

variable "rules_value_format" {
  type        = string
  description = "Value format for the rule"
  default     = ""
}

variable "rules_normalization" {
  type        = string
  description = "Normalization type for the rule"
  default     = ""
}

# ---- Custom Tags ----
variable "entity_selector" {
  type        = string
  description = "Entity selector string for Dynatrace"
  default     = ""
}

variable "custom_tags_filters" {
  type = list(object({
    context = string
    key     = string
    value   = optional(string)
  }))
  description = "List of tag filters to apply"
  default     = []
}
