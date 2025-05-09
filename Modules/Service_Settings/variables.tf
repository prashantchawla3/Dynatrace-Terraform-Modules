variable "enable_copilot" {
  description = "Enable Davis CoPilot."
  type        = bool
  default     = false
}

variable "enable_tenant_aware_data_mining" {
  description = "Enable tenant-aware data mining."
  type        = bool
  default     = false
}

variable "blocklist_name" {
  description = "Name of the blocklist entry."
  type        = string
  default     = ""
}

variable "blocklist_type" {
  description = "Type of the blocklist entry (BUCKET, TABLE)."
  type        = string
  default     = ""
}
