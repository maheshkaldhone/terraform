output "db_instance_endpoint" {
  description = "The endpoint of the RDS instance."
  value       = aws_db_instance.PR3_db_instance.endpoint
}

output "db_instance_id" {
  description = "The ID of the RDS instance."
  value       = aws_db_instance.PR3_db_instance.id
}

output "db_instance_arn" {
  description = "The ARN of the RDS instance."
  value       = aws_db_instance.PR3_db_instance.arn
}

output "db_instance_tags" {
  description = "The tags assigned to the RDS instance."
  value       = aws_db_instance.PR3_db_instance.tags
}

output "db_instance_class" {
  description = "The instance class of the RDS instance."
  value       = aws_db_instance.PR3_db_instance.instance_class
}

output "db_instance_status" {
  description = "The status of the RDS instance."
  value       = aws_db_instance.PR3_db_instance.status
}
