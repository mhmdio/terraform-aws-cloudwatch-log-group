output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = aws_cloudwatch_log_group.this.arn
}

output "name" {
  description = "The name specifying the log group."
  value       = aws_cloudwatch_log_group.this.name
}
