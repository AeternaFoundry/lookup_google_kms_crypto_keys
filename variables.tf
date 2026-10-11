variable "kms_crypto_keys_lookup" {
  description = <<EOT
Map of kms_crypto_keys_lookup, attributes below
Required:
    - key_ring
Optional:
    - filter
EOT

  type = map(object({
    key_ring = string
    filter   = optional(string)
  }))
}

