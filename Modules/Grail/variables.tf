variable "segments" {
  type = list(object({
    name                     = string
    description              = string
    is_public                = bool
    includes                = list(object({
      data_object            = string
      filter                 = string
      relationship_name      = string
      relationship_target    = string
    }))
    variables                = list(object({
      type  = string
      value = string
    }))
  }))
}
