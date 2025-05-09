variable "scope" {
  description = "Scope (HOST, HOST_GROUP, etc.)"
  type        = string
  default     = ""
}

variable "new_container_log_detector" {
  description = "Detect all container logs"
  type        = bool
  default     = false
}

variable "journald_log_detector" {
  description = "Enable journald logs"
  type        = bool
  default     = false
}

variable "enabled_buckets" {
  description = "Enable log bucket"
  type        = bool
  default     = false
}

variable "bucket_name" {
  description = "Bucket name"
  type        = string
  default     = ""
}

variable "matcher_buckets" {
  description = "DQL matcher"
  type        = string
  default     = ""
}

variable "rule_name_buckets" {
  description = "Rule name"
  type        = string
  default     = ""
}

variable "insert_after_buckets" {
  description = "Insert order ID"
  type        = string
  default     = ""
}

variable "sidebar_custom_attribute" {
  description = "Enable sidebar for custom attr"
  type        = bool
  default     = false
}

variable "key_custom_attribute" {
  description = "Key for custom attr"
  type        = string
  default     = ""
}

variable "name_custom_source" {
  description = "Name of custom source"
  type        = string
  default     = ""
}

variable "enabled_custom_source" {
  description = "Enable source"
  type        = bool
  default     = false
}

variable "scope_custom_source" {
  description = "Scope of source"
  type        = string
  default     = ""
}

variable "custom_log_source_type" {
  description = "Source type"
  type        = string
  default     = ""
}

variable "custom_log_source_path" {
  description = "Log path"
  type        = string
  default     = ""
}

variable "enrichment_type_custom_source" {
  description = "Type of enrichment"
  type        = string
  default     = ""
}

variable "enrichment_key1_custom_source" {
  description = "Enrichment key 1"
  type        = string
  default     = ""
}

variable "enrichment_value1_custom_source" {
  description = "Enrichment value 1"
  type        = string
  default     = ""
}

variable "enrichment_key2_custom_source" {
  description = "Enrichment key 2"
  type        = string
  default     = ""
}

variable "enrichment_value2_custom_source" {
  description = "Enrichment value 2"
  type        = string
  default     = ""
}
