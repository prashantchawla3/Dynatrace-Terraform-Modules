# Team Configuration
variable "team_name" {
  description = "The name of the team"
  type        = string
  default     = "default-team"
}

variable "team_description" {
  description = "A description of the team"
  type        = string
  default     = "This is the default team description."
}

variable "team_identifier" {
  description = "The unique identifier for the team"
  type        = string
  default     = "team-001"
}

variable "team_external_id" {
  description = "External ID used for automation or external integrations"
  type        = string
  default     = "ext-id-001"
}

# Team Responsibilities
variable "responsibility_development" {
  description = "Indicates if the team has development responsibilities"
  type        = bool
  default     = true
}

variable "responsibility_infrastructure" {
  description = "Indicates if the team has infrastructure responsibilities"
  type        = bool
  default     = false
}

variable "responsibility_line_of_business" {
  description = "Indicates if the team has line of business responsibilities"
  type        = bool
  default     = false
}

variable "responsibility_operations" {
  description = "Indicates if the team has operations responsibilities"
  type        = bool
  default     = true
}

variable "responsibility_security" {
  description = "Indicates if the team has security responsibilities"
  type        = bool
  default     = false
}

# Additional Information
variable "additional_info_key" {
  description = "Key for any additional information"
  type        = string
  default     = "info-key"
}

variable "additional_info_value" {
  description = "Value for the additional information key"
  type        = string
  default     = "info-value"
}

variable "additional_info_url" {
  description = "URL related to additional information"
  type        = string
  default     = "http://example.com"
}

# Contact Information
variable "contact_integration_type" {
  description = "Type of integration for the team (e.g., Slack, MS Teams)"
  type        = string
  default     = "Slack"
}

variable "contact_jira_default_assignee" {
  description = "Default assignee for JIRA tickets for this team"
  type        = string
  default     = "jira-assignee"
}

variable "contact_jira_project" {
  description = "JIRA project associated with the team"
  type        = string
  default     = "JIRA-PROJECT"
}

variable "contact_ms_teams" {
  description = "Microsoft Teams channel for the team"
  type        = string
  default     = "ms-teams-channel"
}

variable "contact_slack_channel" {
  description = "Slack channel associated with the team"
  type        = string
  default     = "slack-channel"
}

variable "contact_url" {
  description = "URL for contacting the team (could be a website or other platform)"
  type        = string
  default     = "http://contact-team.com"
}

# External Links
variable "link_type" {
  description = "The type of link (e.g., documentation, wiki)"
  type        = string
  default     = "documentation"
}

variable "link_url" {
  description = "URL for the link"
  type        = string
  default     = "http://docs.example.com"
}

# Supplementary Information
variable "supplementary_identifier" {
  description = "An additional identifier for the team"
  type        = string
  default     = "supplementary-id-001"
}
