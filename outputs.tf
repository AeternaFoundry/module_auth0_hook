output "hooks_id" {
  description = "Map of id values across all hooks, keyed the same as var.hooks except keys with no id are omitted"
  value       = { for k, v in auth0_hook.hooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "hooks_dependencies" {
  description = "Map of dependencies values across all hooks, keyed the same as var.hooks except keys with no dependencies are omitted"
  value       = { for k, v in auth0_hook.hooks : k => v.dependencies if v.dependencies != null && length(v.dependencies) > 0 }
}
output "hooks_enabled" {
  description = "Map of enabled values across all hooks, keyed the same as var.hooks except keys with no enabled are omitted"
  value       = { for k, v in auth0_hook.hooks : k => v.enabled if v.enabled != null }
}
output "hooks_name" {
  description = "Map of name values across all hooks, keyed the same as var.hooks except keys with no name are omitted"
  value       = { for k, v in auth0_hook.hooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "hooks_script" {
  description = "Map of script values across all hooks, keyed the same as var.hooks except keys with no script are omitted"
  value       = { for k, v in auth0_hook.hooks : k => v.script if v.script != null && length(v.script) > 0 }
}
output "hooks_secrets" {
  description = "Map of secrets values across all hooks, keyed the same as var.hooks except keys with no secrets are omitted"
  value       = { for k, v in auth0_hook.hooks : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
  sensitive   = true
}
output "hooks_trigger_id" {
  description = "Map of trigger_id values across all hooks, keyed the same as var.hooks except keys with no trigger_id are omitted"
  value       = { for k, v in auth0_hook.hooks : k => v.trigger_id if v.trigger_id != null && length(v.trigger_id) > 0 }
}

