resource "vault_egp_policy" "egp_policies" {
  for_each = var.egp_policies

  enforcement_level = each.value.enforcement_level
  name              = each.value.name
  paths             = each.value.paths
  policy            = each.value.policy
  namespace         = each.value.namespace
}

