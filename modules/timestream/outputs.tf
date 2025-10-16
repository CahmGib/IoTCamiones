output "timestream_database_name" { value = aws_timestreamwrite_database.db.database_name }
output "timestream_table_name" { value = aws_timestreamwrite_table.table.table_name }