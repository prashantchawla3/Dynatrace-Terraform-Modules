variable "custom_device_id" {
  description = "ID for the custom device"
  type        = string
}

variable "display_name" {
  description = "Display name of the custom device"
  type        = string
}

variable "config_url" {
  description = "Configuration URL"
  type        = string
}

variable "favicon_url" {
  description = "Favicon URL"
  type        = string
}

variable "group" {
  description = "Group for the custom device"
  type        = string
}

variable "props" {
  description = "Properties as a map"
  type        = string
}

variable "type" {
  description = "Type of the device"
  type        = string
}

variable "ui_based" {
  description = "Is UI-based"
  type        = bool
}

variable "dns_names" {
  description = "List of DNS names"
  type        = list(string)
  default     = []
}

variable "ip_addresses" {
  description = "List of IP addresses"
  type        = list(string)
  default     = []
}

variable "listen_ports" {
  description = "List of listen ports"
  type        = list(string)
  default     = []
}

variable "enable_dns_names" {
  description = "Toggle for dns_names"
  type        = bool
  default     = true
}

variable "enable_ip_addresses" {
  description = "Toggle for ip_addresses"
  type        = bool
  default     = true
}

variable "enable_listen_ports" {
  description = "Toggle for listen_ports"
  type        = bool
  default     = true
}
