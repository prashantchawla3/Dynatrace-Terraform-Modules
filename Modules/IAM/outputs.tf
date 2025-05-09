output "iam_user_email" {
  description = "Email of the IAM user"
  value       = dynatrace_iam_user.iam_user.email
}

output "iam_policy_name" {
  description = "Name of the IAM policy"
  value       = dynatrace_iam_policy.iam_policy.name
}

output "user_id" {
  description = "ID of the created user"
  value       = dynatrace_user.user.id
}

output "mgmz_permission_group" {
  description = "Group assigned to the management zone"
  value       = dynatrace_mgmz_permission.mgmz_permission.group
}
