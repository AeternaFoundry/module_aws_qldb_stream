variable "qldb_streams" {
  description = <<EOT
Map of qldb_streams, attributes below
Required:
    - inclusive_start_time
    - ledger_name
    - role_arn
    - stream_name
    - kinesis_configuration (block):
        - aggregation_enabled (optional)
        - stream_arn (required)
Optional:
    - exclusive_end_time
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    inclusive_start_time = string
    ledger_name          = string
    role_arn             = string
    stream_name          = string
    exclusive_end_time   = optional(string)
    region               = optional(string)
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
    kinesis_configuration = object({
      aggregation_enabled = optional(bool)
      stream_arn          = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.qldb_streams : (
        (length(v.ledger_name) >= 1 && length(v.ledger_name) <= 32)
      )
    ])
    error_message = "all of: must be between 1 and 32 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.qldb_streams : (
        (length(v.stream_name) >= 1 && length(v.stream_name) <= 32)
      )
    ])
    error_message = "all of: must be between 1 and 32 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

