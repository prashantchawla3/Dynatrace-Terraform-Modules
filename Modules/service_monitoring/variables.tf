variable "dt_env_url" {
  description = "Dynatrace environment URL"
  type        = string
}

variable "dt_api_token" {
  description = "Dynatrace API token"
  type        = string
  sensitive   = true
}

variable "api_color" {
  description = "The color associated with the API."
  type        = string
  default     = ""
}

variable "api_name" {
  description = "The name of the API."
  type        = string
  default     = ""
}

variable "third_party_api" {
  description = "Flag to indicate if the API is a third-party API."
  type        = bool
  default     = false
}

variable "technology" {
  description = "The technology stack associated with the API."
  type        = string
  default     = ""
}

variable "condition_base" {
  description = "The base condition for the API configuration."
  type        = string
  default     = ""
}

variable "condition_matcher" {
  description = "The condition matcher for the API configuration."
  type        = string
  default     = ""
}

variable "condition_pattern" {
  description = "The condition pattern for the API configuration."
  type        = string
  default     = ""
}

variable "metric_name" {
  description = "The name of the metric associated with the API."
  type        = string
  default     = ""
}

variable "metric_enabled" {
  description = "Flag to enable or disable the metric."
  type        = bool
  default     = true
}

variable "management_zones" {
  description = "A list of management zones for the API."
  type        = list(string)
  default     = []
}

variable "metric_key" {
  description = "The key identifier for the metric."
  type        = string
  default     = ""
}

variable "metric_unit" {
  description = "The unit of measurement for the metric."
  type        = string
  default     = ""
}

variable "condition_attribute" {
  description = "The attribute used for condition matching."
  type        = string
  default     = ""
}

variable "comparison_negate" {
  description = "Flag to negate the comparison condition."
  type        = bool
  default     = false
}

variable "http_method_operator" {
  description = "The operator used for the HTTP method."
  type        = string
  default     = ""
}

variable "http_method_values" {
  description = "A list of HTTP method values to be used in conditions."
  type        = list(string)
  default     = []
}

variable "metric_definition_metric" {
  description = "The metric definition for the API."
  type        = string
  default     = ""
}

variable "metric_definition_request_attribute" {
  description = "The request attribute for the metric definition."
  type        = string
  default     = ""
}

variable "service_id" {
  description = "The ID of the service associated with the API."
  type        = string
  default     = ""
}

variable "key_request_ids" {
  description = "A list of request IDs related to the API."
  type        = map(string)
  default     = {}
}

variable "key_request_names" {
  description = "A list of request names related to the API."
  type        = list(string)
  default     = []
}

variable "muted_request_names" {
  description = "A list of muted request names related to the API."
  type        = list(string)
  default     = []
}

variable "request_attribute_name" {
  description = "The name of the request attribute."
  type        = string
  default     = ""
}

variable "request_attribute_enabled" {
  description = "Flag to enable or disable the request attribute."
  type        = bool
  default     = true
}

variable "request_attribute_aggregation" {
  description = "The aggregation method for the request attribute."
  type        = string
  default     = ""
}

variable "request_attribute_confidential" {
  description = "Flag to mark the request attribute as confidential."
  type        = bool
  default     = false
}

variable "request_attribute_data_type" {
  description = "The data type for the request attribute."
  type        = string
  default     = ""
}

variable "request_attribute_normalization" {
  description = "The normalization method for the request attribute."
  type        = string
  default     = ""
}

variable "request_attribute_skip_personal_data_masking" {
  description = "Flag to skip personal data masking for the request attribute."
  type        = bool
  default     = false
}

variable "data_source_enabled" {
  description = "Flag to enable or disable the data source."
  type        = bool
  default     = true
}

variable "data_source_source" {
  description = "The source of the data for the data source."
  type        = string
  default     = ""
}

variable "data_source_technology" {
  description = "The technology stack for the data source."
  type        = string
  default     = ""
}

variable "method_capture" {
  description = "Flag to capture method data."
  type        = bool
  default     = false
}

variable "method_argument_types" {
  description = "A list of argument types for the method."
  type        = list(string)
  default     = []
}

variable "method_class_name" {
  description = "The class name for the method."
  type        = string
  default     = ""
}

variable "method_method_name" {
  description = "The method name."
  type        = string
  default     = ""
}

variable "method_return_type" {
  description = "The return type of the method."
  type        = string
  default     = ""
}

variable "method_visibility" {
  description = "The visibility of the method (e.g., public, private)."
  type        = string
  default     = ""
}

variable "value_processing_split_at" {
  description = "The value at which to split the data."
  type        = string
  default     = ""
}

variable "value_processing_trim" {
  description = "Flag to trim the processed value."
  type        = bool
  default     = false
}

variable "value_processing_value_extractor_regex" {
  description = "The regular expression used to extract values."
  type        = string
  default     = ""
}

variable "extract_substring_delimiter" {
  description = "The delimiter used for substring extraction."
  type        = string
  default     = ""
}

variable "extract_substring_position" {
  description = "The position at which to extract the substring."
  type        = number
  default     = 0
}

variable "value_condition_negate" {
  description = "Flag to negate the value condition."
  type        = bool
  default     = false
}

variable "value_condition_operator" {
  description = "The operator used for the value condition."
  type        = string
  default     = ""
}

variable "value_condition_value" {
  description = "The value used in the condition."
  type        = string
  default     = ""
}

variable "service_naming_name" {
  description = "The name of the service for naming."
  type        = string
  default     = ""
}

variable "service_naming_enabled" {
  description = "Flag to enable or disable service naming."
  type        = bool
  default     = true
}

variable "service_naming_format" {
  description = "The format of the service name."
  type        = string
  default     = ""
}

variable "service_naming_key_type" {
  description = "The key type for the service naming."
  type        = string
  default     = ""
}

variable "service_naming_key_attribute" {
  description = "The key attribute used in service naming."
  type        = string
  default     = ""
}

variable "service_naming_service_type_negate" {
  description = "Flag to negate the service type in naming."
  type        = bool
  default     = false
}

variable "service_naming_service_type_operator" {
  description = "The operator for the service type in naming."
  type        = string
  default     = ""
}

variable "service_naming_service_type_value" {
  description = "The value for the service type in naming."
  type        = string
  default     = ""
}

variable "url_based_sampling_enabled" {
  description = "Flag to enable or disable URL-based sampling."
  type        = bool
  default     = false
}

variable "url_based_sampling_factor" {
  description = "The factor for URL-based sampling."
  type        = number
  default     = 1
}

variable "url_based_sampling_http_method_any" {
  description = "Flag to allow any HTTP method in URL-based sampling."
  type        = bool
  default     = false
}

variable "url_based_sampling_ignore" {
  description = "Flag to ignore URL-based sampling."
  type        = bool
  default     = false
}

variable "url_based_sampling_path" {
  description = "The path used for URL-based sampling."
  type        = string
  default     = ""
}

variable "url_based_sampling_path_comparison_type" {
  description = "The comparison type for the URL path."
  type        = string
  default     = ""
}

variable "query_parameter_name" {
  description = "The name of the query parameter."
  type        = string
  default     = ""
}

variable "query_parameter_value" {
  description = "The value of the query parameter."
  type        = string
  default     = ""
}

variable "query_parameter_value_is_undefined" {
  description = "Flag to indicate if the query parameter value is undefined."
  type        = bool
  default     = false
}

variable "naming_pattern" {
  description = "The naming pattern used for services."
  type        = string
  default     = ""
}
