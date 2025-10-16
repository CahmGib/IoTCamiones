resource "aws_kinesis_stream" "telemetry" {
name = var.name
shard_count = var.shard_count
retention_period = var.retention_hours
encryption_type = var.encryption ? "KMS" : "NONE"
kms_key_id = var.encryption ? var.kms_key_id : null
tags = { Name = var.name }
}