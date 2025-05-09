##############################
# IAM Group
##############################
variable "iam_group_name" {
  description = "Name of the IAM group"
  type        = string
}

variable "iam_group_permission_scope" {
  description = "Scope of the permission for the IAM group"
  type        = string
}

##############################
# IAM Permission
##############################
variable "iam_permission_group" {
  description = "Group to assign IAM permission"
  type        = string
}

variable "iam_permission_account" {
  description = "Account ID for IAM permission"
  type        = string
}

##############################
# IAM Policy
##############################
variable "iam_policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "iam_policy_statement_query" {
  description = "Policy statement query"
  type        = string
}

variable "iam_policy_account" {
  description = "Account associated with the IAM policy"
  type        = string
}

variable "iam_policy_description" {
  description = "Description of the IAM policy"
  type        = string
}

variable "iam_policy_tags" {
  description = "Tags for the IAM policy"
  type        = set(string)
}

##############################
# IAM Policy Bindings (v1)
##############################
variable "iam_policy_bindings_group" {
  description = "Group for IAM policy bindings"
  type        = string
}

variable "iam_policy_bindings_account" {
  description = "Account for IAM policy bindings"
  type        = string
}

variable "iam_policy_bindings_policies" {
  description = "List of policy names to bind"
  type        = list(string)
}

##############################
# IAM Policy Bindings (v2)
##############################
variable "iam_policy_bindings_v2_group" {
  description = "Group for IAM policy bindings v2"
  type        = string
}

variable "iam_policy_bindings_v2_account" {
  description = "Account for IAM policy bindings v2"
  type        = string
}

variable "iam_policy_bindings_v2_policies" {
  description = "Map of policy binding details for v2"
  type = map(object({
    id         = string
    parameters = map(string)
    metadata   = map(string)
  }))
}

##############################
# IAM Policy Boundary
##############################
variable "iam_policy_boundary_name" {
  description = "Name of the IAM policy boundary"
  type        = string
}

variable "iam_policy_boundary_query" {
  description = "Query for the IAM policy boundary"
  type        = string
}

##############################
# IAM User
##############################
variable "iam_user_email" {
  description = "Email address of the IAM user"
  type        = string
}

variable "iam_user_groups" {
  description = "Groups to assign to the IAM user"
  type        = list(string)
}

##############################
# Management Zone Permission
##############################
variable "mgmz_permission_group" {
  description = "Group for management zone permissions"
  type        = string
}

variable "mgmz_permission_environment" {
  description = "Environment name for management zone permission"
  type        = string
}

variable "mgmz_permission_management_zone" {
  description = "Management zone name"
  type        = string
}

variable "mgmz_permission_permissions" {
  description = "List of permissions for management zone"
  type        = list(string)
}

##############################
# Cluster Policy
##############################
variable "policy_name" {
  description = "Name of the cluster policy"
  type        = string
}

variable "policy_statement_query" {
  description = "Query for the cluster policy statement"
  type        = string
}

variable "policy_cluster" {
  description = "Cluster name or ID"
  type        = string
}

variable "policy_description" {
  description = "Description of the cluster policy"
  type        = string
}

variable "policy_tags" {
  description = "Tags for the cluster policy"
  type        = set(string)
}


##############################
# Cluster Policy Bindings
##############################
variable "policy_bindings_group" {
  description = "Group for binding cluster policies"
  type        = string
}

variable "policy_bindings_cluster" {
  description = "Cluster for binding cluster policies"
  type        = string
}

variable "policy_bindings_policies" {
  description = "List of policy names for cluster binding"
  type        = list(string)
}

##############################
# User
##############################
variable "user_email" {
  description = "Email of the user"
  type        = string
}

variable "user_first_name" {
  description = "First name of the user"
  type        = string
}

variable "user_last_name" {
  description = "Last name of the user"
  type        = string
}

variable "user_user_name" {
  description = "Username of the user"
  type        = string
}

variable "user_groups" {
  description = "Groups assigned to the user"
  type        = list(string)
}

##############################
# User Group
##############################
variable "user_group_name" {
  description = "Name of the user group"
  type        = string
}

variable "user_group_ldap_groups" {
  description = "List of LDAP groups"
  type        = list(string)
}

variable "user_group_sso_groups" {
  description = "List of SSO groups"
  type        = list(string)
}

variable "user_group_permission" {
  description = "Permission assigned to the user group"
  type        = string
}

variable "user_group_environments" {
  description = "List of environments for the user group permission"
  type        = list(string)
}
