custom_device_id = "my-custom-device-001"
display_name     = "My Custom Device"
config_url       = "https://config.example.com"
favicon_url      = "https://config.example.com/favicon.ico"
group            = "my-device-group"
props = "location=datacenter-1;role=monitor"
type        = "custom_device"
ui_based    = true

dns_names   = ["custom.example.com", "backup.example.com"]
ip_addresses = ["10.0.0.10", "10.0.0.11"]
listen_ports = ["8080", "443"]

enable_dns_names    = true
enable_ip_addresses = true
enable_listen_ports = true
