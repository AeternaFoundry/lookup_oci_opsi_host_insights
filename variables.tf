variable "opsi_host_insights_lookup" {
  description = <<EOT
Map of opsi_host_insights_lookup, attributes below
Optional:
    - compartment_id
    - compartment_id_in_subtree
    - enterprise_manager_bridge_id
    - exadata_insight_id
    - host_type
    - state
    - status
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id               = optional(string)
    compartment_id_in_subtree    = optional(bool)
    enterprise_manager_bridge_id = optional(string)
    exadata_insight_id           = optional(string)
    host_type                    = optional(list(string))
    state                        = optional(list(string))
    status                       = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

