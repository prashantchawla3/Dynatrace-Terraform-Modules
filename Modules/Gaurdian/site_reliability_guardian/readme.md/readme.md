

# **Dynatrace Site Reliability Guardian Configuration**

This Terraform configuration sets up a **Site Reliability Guardian** in Dynatrace, a monitoring and observability tool. The configuration defines a **Guardian** with a custom set of **objectives**. The Guardian will monitor certain application metrics and events to ensure reliability and detect failures.

## **Configuration Overview**

* **Guardian**: Represents an entity in Dynatrace that monitors the health and performance of your system, based on objectives and queries.
* **Objectives**: These are custom-defined conditions (often based on metrics or logs) that the Guardian will monitor. If these objectives are violated, the Guardian can take actions like triggering an alert.

## **Terraform Configuration**

This Terraform configuration creates a Dynatrace **Site Reliability Guardian** with a list of objectives that can be monitored for specific conditions.

### **Main Resource**

```hcl
resource "dynatrace_site_reliability_guardian" "this" {
  name        = var.guardian_name
  description = var.guardian_description
  tags        = var.guardian_tags

  objectives {
    dynamic "objective" {
      for_each = var.objectives
      content {
        name                = objective.value.name
        description         = lookup(objective.value, "description", null)
        objective_type      = objective.value.objective_type
        dql_query           = lookup(objective.value, "dql_query", null)
        reference_slo       = lookup(objective.value, "reference_slo", null)
        comparison_operator = objective.value.comparison_operator
        target              = objective.value.target
        warning             = objective.value.warning
      }
    }
  }
}
```

### **Outputs**

The ID of the created Guardian will be outputted for use in other configurations or workflows:

```hcl
output "guardian_id" {
  value       = dynatrace_site_reliability_guardian.this.id
  description = "ID of the created Site Reliability Guardian"
}
```

### **Variables**

* **`guardian_name`**: The name of the Guardian.
* **`guardian_description`**: A description for the Guardian (optional).
* **`guardian_tags`**: Tags to classify the Guardian.
* **`objectives`**: A list of objectives the Guardian will monitor. Each objective includes:

  * **`name`**: The name of the objective.
  * **`objective_type`**: The type of objective (e.g., DQL query, threshold, etc.).
  * **`dql_query`**: The DQL (Dynatrace Query Language) query for the objective (if applicable).
  * **`reference_slo`**: The reference Service Level Objective (SLO) for comparison.
  * **`comparison_operator`**: The operator to compare against (e.g., LESS\_THAN\_OR\_EQUAL).
  * **`target`**: The target value for the objective.
  * **`warning`**: The warning threshold.

```hcl
variable "guardian_name" {
  type        = string
  description = "Name of the Site Reliability Guardian"
}

variable "guardian_description" {
  type    = string
  default = ""
}

variable "guardian_tags" {
  type    = list(string)
  default = []
}

variable "objectives" {
  type = list(object({
    name                = string
    description         = optional(string)
    objective_type      = string
    dql_query           = optional(string)
    reference_slo       = optional(string)
    comparison_operator = string
    target              = number
    warning             = number
  }))
}
```

### **Example Values**

```hcl
guardian_name           = "My Guardian"
guardian_tags           = ["team:devops", "env:prod"]

objectives = [
  {
    name                = "Error rate"
    objective_type      = "DQL"
    dql_query           = <<-EOT
      fetch logs
      | fieldsAdd errors = toLong(loglevel == "ERROR")
      | summarize errorRate = sum(errors)/count() * 100
    EOT
    comparison_operator = "LESS_THAN_OR_EQUAL"
    target              = 10
    warning             = 8
  }
]
```

### **API Token Scopes**

To deploy this configuration, your API token must have the following permissions:

* **`settings.read`**
* **`settings.write`**

Ensure that your API token has the necessary permissions before running this configuration.

---

### **How This Works**

1. **Guardian Setup**:

   * The **Dynatrace Site Reliability Guardian** is created with the provided name, description, and tags.
   * A set of objectives is defined to specify what the Guardian should monitor, such as error rates or other custom metrics.

2. **Objectives**:

   * The Guardian can have multiple objectives, each of which monitors a particular metric or condition.
   * In the example, the Guardian monitors **error rates** based on a **DQL query** that calculates the percentage of error logs. If the error rate exceeds the **warning threshold** (8%) or the **target threshold** (10%), the Guardian will take action.

3. **Guardian Validation**:

   * Once the Guardian is created, you can use workflows to validate its state, especially in case of failures, based on the objectives being violated.

---

### **Next Steps**

1. **Apply the Terraform Configuration**:

   * Initialize and apply the configuration using Terraform:

     ```bash
     terraform init
     terraform apply
     ```

2. **Monitor the Guardian**:

   * The Guardian will begin monitoring the metrics and events defined in the objectives.
   * If any objective's threshold is violated, the Guardian will trigger an action or alert based on your configuration.

3. **Use with Automation Workflows**:

   * After creating the Guardian, you can integrate it with automation workflows to validate its status or trigger actions based on the Guardian's health.

---

### **Additional Notes**

* The **DQL query** is highly customizable. Adjust it to monitor other types of metrics or logs based on your application’s requirements.
* Make sure the **API token** used in your setup has appropriate permissions to create and manage Dynatrace objects.

---


