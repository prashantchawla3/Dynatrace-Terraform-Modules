name = "Test Alerting Profile"

rules = [
  {
    severity_level   = "CRITICAL"
    delay_in_minutes = 5
    include_mode     = "INCLUDE"
    tags = [
      {
        key   = "Environment"
        value = "Production"
      },
      {
        key   = "Service"
        value = "AppService"
      }
    ]
  },
  {
    severity_level   = "WARNING"
    delay_in_minutes = 10
    include_mode     = "EXCLUDE"
    tags = [
      {
        key   = "Environment"
        value = "Staging"
      }
    ]
  }
]

general_properties = {
  name              = "Test Maintenance Window"
  description       = "Scheduled maintenance for testing."
  type              = "PLANNED"
  disable_synthetic = true
  suppression       = "DETECT_PROBLEMS_AND_ALERT"
}

maintenance = {
  recurrence_type = "WEEKLY"

  weekly_recurrence = {
    day_of_week = "MONDAY"
    recurrence_range = {
      start_date = "2022-10-05"
      end_date   = "2022-10-06"
    }
    time_window = {
      start_time = "14:13:00"
      end_time   = "15:13:00"
      time_zone  = "UTC"
    }
  }

  filters = [
    {
      entity_type = "HOST"
      entity_tags = ["KeyTest:ValueTest"]
    }
  ]
}
