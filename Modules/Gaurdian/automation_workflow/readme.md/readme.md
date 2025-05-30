

# Dynatrace Automation Workflow Setup

This setup defines an **Automation Workflow** in Dynatrace that performs Guardian validation and responds to Guardian events. The configuration includes the following key parts:

1. **Guardian Validation Task**: A task that validates the performance and reliability of the Guardian (a service that ensures application availability based on set objectives).
2. **Triggering on Guardian Validation Failures**: The workflow is triggered when a Guardian validation event is finished and the validation result is `"FAILED"`.

## Prerequisites

Before applying this configuration, ensure that you have the following prerequisites:

* **Dynatrace account** with the necessary permissions.

  * **Permissions**:

    * `automation:workflows:read` — View workflows.
    * `automation:workflows:write` — Create and edit workflows.
* **Environment Variables** for OAuth authentication:

  * `DT_CLIENT_ID`
  * `DT_CLIENT_SECRET`
  * `DT_ACCOUNT_ID`

## Configuration Overview

### 1. Workflow Configuration

The workflow defines the **tasks** and **triggers** for the automation. The tasks are responsible for validating the Guardian, and the trigger ensures that actions are taken when the validation fails.

### 2. Guardian Validation Task

The task to validate the Guardian checks the performance and reliability of your Guardian instance, based on the validation objectives you have set. If any objectives fail (e.g., high error rates), the validation will mark it as `"FAILED"`, which will trigger the automation.

```hcl
resource "dynatrace_automation_workflow" "this" {
  title       = var.workflow_title
  description = var.workflow_description
  actor       = var.workflow_actor
  owner       = var.workflow_owner
  private     = true

  dynamic "tasks" {
    for_each = [1]
    content {
      dynamic "task" {
        for_each = var.workflow_tasks
        content {
          name        = task.value.name
          description = lookup(task.value, "description", null)
          action      = task.value.action
          active      = lookup(task.value, "active", true)
          input       = task.value.input
          position {
            x = task.value.position.x
            y = task.value.position.y
          }
        }
      }
    }
  }

  dynamic "trigger" {
    for_each = var.workflow_trigger != null ? [1] : []
    content {
      event {
        active = var.workflow_trigger.active
        config {
          event {
            event_type = var.workflow_trigger.event_type
            query      = var.workflow_trigger.query
          }
        }
      }
    }
  }
}
```

### 3. Trigger for Guardian Validation Failures

The trigger is activated when the **Guardian validation** is finished and the validation result is `"FAILED"`. This trigger ensures that your workflow only reacts when the Guardian fails to meet the defined objectives (e.g., error rates exceed thresholds).

```hcl
workflow_trigger = {
  active     = true
  event_type = "guardian.validation.finished"
  query      = "parsed_execution_context.result == \"FAILED\" and guardian.id == \"${module.site_reliability_guardian.guardian_id}\""
}
```

### 4. Workflow Tasks

In the `workflow_tasks` variable, you define the task that validates the Guardian. The input for the task includes the **Guardian ID** and a time range to evaluate the Guardian validation. The action that the task performs is `dynatrace.site.reliability.guardian:validate-guardian-action`.

```hcl
workflow_tasks = [
  {
    name   = "validate_guardian"
    action = "dynatrace.site.reliability.guardian:validate-guardian-action"
    input  = jsonencode({
      executionId = "execution_id_placeholder"
      objectId    = module.site_reliability_guardian.guardian_id
      timeframeInputType = "timeframeSelector"
      timeframeSelector = {
        from = "now-30m"
        to   = "now"
      }
    })
    position = {
      x = 0
      y = 1
    }
  }
]
```

### 5. Trigger Details

The trigger listens for `guardian.validation.finished` events where the result is `"FAILED"`. The query is used to filter the events to ensure it only matches the failure status of the Guardian for a specific `guardian.id`.

```hcl
workflow_trigger = {
  active     = true
  event_type = "guardian.validation.finished"
  query      = "parsed_execution_context.result == \"FAILED\" and guardian.id == \"${module.site_reliability_guardian.guardian_id}\""
}
```

### What Happens When Validation Fails?

* **Trigger Activation**: When the Guardian validation results in `"FAILED"`, the trigger activates and starts the workflow.
* **Tasks Execution**: Based on the workflow tasks, actions are executed. For example, tasks can notify a team, execute remediation steps, or perform further validation.

  * For example, if the Guardian fails validation due to high error rates, you can automatically alert the operations team and trigger auto-remediation actions.

## Steps to Deploy

### Step 1: Define the Variables

You will need to define the following variables in your Terraform configuration or as input to the module:

* `workflow_title` — The title of the workflow.
* `workflow_description` — The description of the workflow.
* `workflow_actor` — The actor ID (usually the user or system executing the workflow).
* `workflow_owner` — The owner ID (typically the team or responsible party).
* `workflow_tasks` — The list of tasks to be executed (including Guardian validation).
* `workflow_trigger` — The trigger that activates based on Guardian validation failures.

### Step 2: Apply the Terraform Configuration

Once the variables are defined, apply the Terraform configuration to create the workflow.

```bash
terraform init
terraform apply
```

### Step 3: Monitor and Act on Failures

Once the workflow is set up, it will respond to Guardian validation failures. You can monitor the execution of the workflow and ensure that tasks (e.g., alerting, remediation) are executed as expected.

---

## Conclusion

This setup ensures that the workflow is configured to:

1. **Validate the Guardian**: The task checks the performance and reliability of your application based on defined objectives.
2. **Respond to Guardian Validation Events**: The trigger listens for `guardian.validation.finished` events and acts when the validation result is `"FAILED"`. You can set actions to be performed when the validation fails, such as sending alerts or triggering automated remediation.

By using **Dynatrace Automation Workflows**, you can ensure that your system is always monitored and automatically remediates issues when necessary, all while keeping track of your application's performance through Guardian validation.

---

