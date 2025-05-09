# ----- Auto Tag -----
autotag_name = "public-network-request-tag"

# ---- String Condition ----
string_condition_negate         = false
string_condition_operator       = "EQUALS"
string_condition_value          = "Requests to public networks"
string_condition_case_sensitive = true
string_condition_key_attribute  = "SERVICE_DETECTED_NAME"
string_condition_key_type       = "STATIC"

# ---- Service Topology Condition ----
service_topology_negate        = false
service_topology_operator      = "EQUALS"
service_topology_value         = "EXTERNAL_SERVICE"
service_topology_key_attribute = "SERVICE_TOPOLOGY"
service_topology_key_type      = "STATIC"

# ---- Rule Attributes ----
rules_enabled       = true
rules_type          = "SERVICE"
rules_value_format  = "{Service:EndpointPath}"
rules_normalization = "LEAVE_TEXT_AS_IS"

# ---- Custom Tags ----
entity_selector = "entityId(\"HOST-123456789000000\")"

custom_tags_filters = [
  {
    context = "CONTEXTLESS"
    key     = "KeyExampleA"
  },
  {
    context = "CONTEXTLESS"
    key     = "KeyExampleA"
    value   = "ValueExample1"
  },
  {
    context = "CONTEXTLESS"
    key     = "KeyExampleB"
  },
  {
    context = "CONTEXTLESS"
    key     = "KeyExampleC"
    value   = "ValueExample2"
  }
]
