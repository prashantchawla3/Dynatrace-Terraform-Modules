workflow_title       = "Example Workflow"
workflow_description = "This is a test workflow"
workflow_actor       = "00000000-0000-0000-0000-000000000000"
workflow_owner       = "00000000-0000-0000-0000-000000000000"

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


workflow_trigger = {
  active     = true
  event_type = "bizevents"
  query      = "application == \"demo\" and stage == \"prod\""
}
