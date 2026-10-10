resource "auth0_hook" "hooks" {
  for_each = var.hooks

  name         = each.value.name
  script       = each.value.script
  trigger_id   = each.value.trigger_id
  dependencies = each.value.dependencies
  enabled      = each.value.enabled
  secrets      = each.value.secrets
}

