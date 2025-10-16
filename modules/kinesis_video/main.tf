resource "aws_kinesis_video_stream" "video" {
name = var.name
data_retention_in_hours = var.retention_hours
media_type = var.media_type
tags = { Name = var.name }
}