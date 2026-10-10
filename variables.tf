variable "hooks" {
  description = <<EOT
Map of hooks, attributes below
Required:
    - name
    - script
    - trigger_id
Optional:
    - dependencies
    - enabled
    - secrets
EOT

  type = map(object({
    name         = string
    script       = string
    trigger_id   = string
    dependencies = optional(map(string))
    enabled      = optional(bool)
    secrets      = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.hooks : (
        contains(["credentials-exchange", "pre-user-registration", "post-user-registration", "post-change-password", "send-phone-message"], v.trigger_id)
      )
    ])
    error_message = "must be one of: \"credentials-exchange\", \"pre-user-registration\", \"post-user-registration\", \"post-change-password\", \"send-phone-message\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

