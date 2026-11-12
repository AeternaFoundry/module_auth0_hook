output "hooks_id" {
  description = "Map of id values across all hooks, keyed the same as var.hooks"
  value       = { for k, v in auth0_hook.hooks : k => v.id }
}
output "hooks_dependencies" {
  description = "Map of dependencies values across all hooks, keyed the same as var.hooks"
  value       = { for k, v in auth0_hook.hooks : k => v.dependencies }
}
output "hooks_enabled" {
  description = "Map of enabled values across all hooks, keyed the same as var.hooks"
  value       = { for k, v in auth0_hook.hooks : k => v.enabled }
}
output "hooks_name" {
  description = "Map of name values across all hooks, keyed the same as var.hooks"
  value       = { for k, v in auth0_hook.hooks : k => v.name }
}
output "hooks_script" {
  description = "Map of script values across all hooks, keyed the same as var.hooks"
  value       = { for k, v in auth0_hook.hooks : k => v.script }
}
output "hooks_secrets" {
  description = "Map of secrets values across all hooks, keyed the same as var.hooks"
  value       = { for k, v in auth0_hook.hooks : k => v.secrets }
  sensitive   = true
}
output "hooks_trigger_id" {
  description = "Map of trigger_id values across all hooks, keyed the same as var.hooks"
  value       = { for k, v in auth0_hook.hooks : k => v.trigger_id }
}

