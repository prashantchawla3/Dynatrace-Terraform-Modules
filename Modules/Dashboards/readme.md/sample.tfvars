dashboards = [
  {
    dashboard_id    = "dashboard_1"
    name            = "Dashboard 1"
    description     = "This is the first dashboard"
    layout_type     = "GRID"
    sharing         = "PUBLIC"
    management_zone = "Zone 1"
    widgets = [
      {
        name     = "Widget 1"
        type     = "CUSTOM"
        size     = "LARGE"
        position = "TOP_LEFT"
        settings = {
          "key" = "value"
        }
      },
      {
        name     = "Widget 2"
        type     = "GRAPH"
        size     = "SMALL"
        position = "BOTTOM_RIGHT"
        settings = {
          "key" = "another_value"
        }
      }
    ]
  },
  {
    dashboard_id    = "dashboard_2"
    name            = "Dashboard 2"
    description     = "This is the second dashboard"
    layout_type     = "VERTICAL"
    sharing         = "PRIVATE"
    management_zone = "Zone 2"
    widgets = [
      {
        name     = "Widget 3"
        type     = "TABLE"
        size     = "MEDIUM"
        position = "TOP_RIGHT"
        settings = {
          "key" = "third_value"
        }
      }
    ]
  }
]

variables_type  = "some_type"
variables_value = "some_value"
