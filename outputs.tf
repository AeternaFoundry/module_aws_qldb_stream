output "qldb_streams_id" {
  description = "Map of id values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "qldb_streams_arn" {
  description = "Map of arn values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "qldb_streams_exclusive_end_time" {
  description = "Map of exclusive_end_time values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.exclusive_end_time if v.exclusive_end_time != null && length(v.exclusive_end_time) > 0 }
}
output "qldb_streams_inclusive_start_time" {
  description = "Map of inclusive_start_time values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.inclusive_start_time if v.inclusive_start_time != null && length(v.inclusive_start_time) > 0 }
}
output "qldb_streams_kinesis_configuration" {
  description = "Map of kinesis_configuration values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => one(v.kinesis_configuration) if v.kinesis_configuration != null && length(v.kinesis_configuration) > 0 }
}
output "qldb_streams_ledger_name" {
  description = "Map of ledger_name values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.ledger_name if v.ledger_name != null && length(v.ledger_name) > 0 }
}
output "qldb_streams_region" {
  description = "Map of region values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.region if v.region != null && length(v.region) > 0 }
}
output "qldb_streams_role_arn" {
  description = "Map of role_arn values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "qldb_streams_stream_name" {
  description = "Map of stream_name values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.stream_name if v.stream_name != null && length(v.stream_name) > 0 }
}
output "qldb_streams_tags" {
  description = "Map of tags values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "qldb_streams_tags_all" {
  description = "Map of tags_all values across all qldb_streams, keyed the same as var.qldb_streams"
  value       = { for k, v in aws_qldb_stream.qldb_streams : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

