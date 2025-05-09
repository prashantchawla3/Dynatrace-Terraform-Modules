segments = [
  {
    name        = "Segment 1"
    description = "This is the first segment"
    is_public   = true

    includes = [
      {
        data_object          = "object1"
        filter               = "filter1"
        relationship_name    = "relation1"
        relationship_target  = "target1"
      }
    ]

    variables = [
      {
        type  = "string"
        value = "value1"
      }
    ]
  },
  {
    name        = "Segment 2"
    description = "This is the second segment"
    is_public   = false

    includes = [
      {
        data_object          = "object2"
        filter               = "filter2"
        relationship_name    = "relation2"
        relationship_target  = "target2"
      }
    ]

    variables = [
      {
        type  = "number"
        value = "42"
      }
    ]
  }
]
