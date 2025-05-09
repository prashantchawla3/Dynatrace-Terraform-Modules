resource "dynatrace_custom_device" "custom_device" {
  custom_device_id = var.custom_device_id
  display_name     = var.display_name
  config_url       = var.config_url
  favicon_url      = var.favicon_url
  group            = var.group
  props            = var.props
  type             = var.type
  ui_based         = var.ui_based

  dns_names     = var.enable_dns_names ? var.dns_names : []
  ip_addresses  = var.enable_ip_addresses ? var.ip_addresses : []
  listen_ports  = var.enable_listen_ports ? var.listen_ports : []
}
