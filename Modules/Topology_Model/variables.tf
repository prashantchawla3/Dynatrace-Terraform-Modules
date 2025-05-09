variable "generic_relationships_enabled" {
  description = "Enable or disable generic relationships"
  type        = bool
  default     = false
}

variable "generic_relationships_created_by" {
  description = "Creator identifier for generic relationships"
  type        = string
  default     = ""
}

variable "generic_relationships_from_role" {
  description = "Role of the source entity in the relationship"
  type        = string
  default     = ""
}

variable "generic_relationships_from_type" {
  description = "Type of the source entity in the relationship"
  type        = string
  default     = ""
}

variable "generic_relationships_to_role" {
  description = "Role of the target entity in the relationship"
  type        = string
  default     = ""
}

variable "generic_relationships_to_type" {
  description = "Type of the target entity in the relationship"
  type        = string
  default     = ""
}

variable "generic_relationships_type_of_relation" {
  description = "Type of the relationship (e.g., 'dependsOn')"
  type        = string
  default     = ""
}

variable "generic_relationships_sources_condition" {
  description = "Condition used for the sources in generic relationships"
  type        = string
  default     = ""
}

variable "generic_relationships_sources_source_type" {
  description = "Source type for the relationship sources"
  type        = string
  default     = ""
}

variable "generic_types_name" {
  description = "Name of the generic type"
  type        = string
  default     = ""
}

variable "generic_types_enabled" {
  description = "Enable or disable the generic type"
  type        = bool
  default     = false
}

variable "generic_types_created_by" {
  description = "Creator identifier for the generic type"
  type        = string
  default     = ""
}

variable "generic_types_display_name" {
  description = "Display name for the generic type"
  type        = string
  default     = ""
}

variable "generic_types_rules_icon_pattern" {
  description = "Pattern for the icon used in generic type rules"
  type        = string
  default     = ""
}

variable "generic_types_rules_id_pattern" {
  description = "Pattern for the ID used in generic type rules"
  type        = string
  default     = ""
}

variable "generic_types_rules_instance_name_pattern" {
  description = "Pattern for the instance name in generic type rules"
  type        = string
  default     = ""
}

variable "generic_types_rules_attributes_key" {
  description = "Key of the attributes used in generic type rules"
  type        = string
  default     = ""
}

variable "generic_types_rules_attributes_pattern" {
  description = "Pattern of the attributes used in generic type rules"
  type        = string
  default     = ""
}

variable "generic_types_rules_required_dimensions_key" {
  description = "Required dimension key for generic type rules"
  type        = string
  default     = ""
}

variable "generic_types_rules_sources_condition" {
  description = "Condition used for rule sources in generic types"
  type        = string
  default     = ""
}

variable "generic_types_rules_sources_source_type" {
  description = "Source type used in rule sources for generic types"
  type        = string
  default     = ""
}

variable "grail_security_context_entity_type" {
  description = "Entity type used for the Grail security context"
  type        = string
  default     = ""
}

variable "grail_security_context_destination_property" {
  description = "Destination property for the Grail security context"
  type        = string
  default     = ""
}
