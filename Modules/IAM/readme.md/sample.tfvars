# IAM Group
iam_group_name              = "dev-team"
iam_group_permission_scope = "account-xyz"

# IAM Permission
iam_permission_group  = "dev-team"
iam_permission_account = "account-xyz"

# IAM Policy
iam_policy_name             = "readonly-policy"
iam_policy_statement_query  = "ALLOW read ON account"
iam_policy_account          = "account-xyz"
iam_policy_description      = "Read-only policy"
iam_policy_tags = ["env=dev", "team=ops"]

# IAM Policy Bindings (v1)
iam_policy_bindings_group   = "dev-team"
iam_policy_bindings_account = "account-xyz"
iam_policy_bindings_policies = ["readonly-policy"]

# IAM Policy Bindings (v2)
iam_policy_bindings_v2_group   = "dev-team"
iam_policy_bindings_v2_account = "account-xyz"
iam_policy_bindings_v2_policies = {
  "readonly-policy" = {
    id         = "readonly-policy"
    parameters = { level = "read" }
    metadata   = { origin = "terraform" }
  }
}

# IAM Policy Boundary
iam_policy_boundary_name  = "boundary-policy"
iam_policy_boundary_query = "ALLOW read ON account"

# IAM User
iam_user_email  = "dev.user@example.com"
iam_user_groups = ["dev-team"]

# Management Zone
mgmz_permission_group           = "dev-team"
mgmz_permission_environment     = "production"
mgmz_permission_management_zone = "zone-1"
mgmz_permission_permissions     = ["read", "write"]

# Cluster Policy
policy_name             = "cluster-policy"
policy_statement_query  = "ALLOW read ON cluster"
policy_cluster          = "cluster-xyz"
policy_description      = "Cluster read access"
policy_tags = ["team=ops", "env=prod"]

# Cluster Policy Bindings
policy_bindings_group    = "dev-team"
policy_bindings_cluster  = "cluster-xyz"
policy_bindings_policies = ["cluster-policy"]

# User
user_email      = "jane.doe@example.com"
user_first_name = "Jane"
user_last_name  = "Doe"
user_user_name  = "jdoe"
user_groups     = ["dev-team"]

# User Group
user_group_name         = "dev-team"
user_group_ldap_groups  = ["cn=dev,dc=example,dc=com"]
user_group_sso_groups   = ["sso-dev-group"]
user_group_permission   = "account-user-management"
user_group_environments = ["prod", "staging"]
