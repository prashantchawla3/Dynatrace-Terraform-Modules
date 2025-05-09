resource "dynatrace_segment" "example" {
  count       = length(var.segments)

  name        = var.segments[count.index].name
  description = var.segments[count.index].description
  is_public   = var.segments[count.index].is_public

  includes {
    items {
      data_object = var.segments[count.index].includes[0].data_object
      filter      = var.segments[count.index].includes[0].filter
      relationship {
        name   = var.segments[count.index].includes[0].relationship_name
        target = var.segments[count.index].includes[0].relationship_target
      }
    }
  }

  variables {
    type  = var.segments[count.index].variables[0].type
    value = var.segments[count.index].variables[0].value
  }
}
