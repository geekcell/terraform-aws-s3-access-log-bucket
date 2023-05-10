# Context
variable "tags" {
  default     = {}
  description = "Tags to add to the AWS Customer Managed Key."
  type        = map(any)
}

# AWS S3
variable "expiration" {
  default     = 365
  description = "The number of days after which to expunge the objects."
  type        = number
}

variable "name" {
  description = "The name of the bucket."
  type        = string
}

variable "noncurrent_version_expiration" {
  default     = 90
  description = "The number of days after which to delete the noncurrent object."
  type        = number
}

variable "noncurrent_version_transitions" {
  default = [
    {
      noncurrent_days = 30
      storage_class   = "STANDARD_IA"
    }
  ]
  description = "Transition to another storage class for noncurrent_versions."
  type        = list(object({
    noncurrent_days = number
    storage_class   = string
  }))
}

variable "transitions" {
  default = [
    {
      days          = 30
      storage_class = "STANDARD_IA"
    },
    {
      days          = 60
      storage_class = "GLACIER"
    },
    {
      days          = 180
      storage_class = "DEEP_ARCHIVE"
    }
  ]
  description = "Transition to another storage class."
  type        = list(object({
    days          = number
    storage_class = string
  }))
}

variable "versioning" {
  default     = "Enabled"
  description = "Enables versioning of objects in the bucket."
  type        = string
}

variable "mfa_delete" {
  default     = "Disabled"
  description = "Specifies whether MFA delete is enabled in the bucket."
  type        = string
}

variable "mfa" {
  default     = null
  description = "MFA device ARN including a TOTP token to enable MFA delete."
  type        = string
}

variable "deny_non_secure_transport" {
  default     = true
  description = "Whether to attach a policy to the bucket to deny all non-SSL requests."
  type        = bool
}

variable "allow_elb_write_access_logs" {
  description = "Attach a policy to allow Elastic Load Balancing to write access logs."
  default     = true
  type        = bool
}
