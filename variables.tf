variable "egp_policies" {
  description = <<EOT
Map of egp_policies, attributes below
Required:
    - enforcement_level
    - name
    - paths
    - policy
Optional:
    - namespace
EOT

  type = map(object({
    enforcement_level = string
    name              = string
    paths             = list(string)
    policy            = string
    namespace         = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

