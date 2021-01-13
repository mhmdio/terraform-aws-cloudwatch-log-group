variable name {
  description = "CloudWatch Group Log Name"
}

variable kms_key_id {
  description = "CloudWatch Group Log KMS key id"
  default     = null
}

variable retention_in_days {
  description = "CloudWatch Group Log retention in days"
  type        = number
  default     = 7
}

variable tags {
  description = "CloudWatch Group Log tags"
  type        = map(string)
  default     = {}
}
