data "google_kms_crypto_keys" "kms_crypto_keys_lookup" {
  for_each = var.kms_crypto_keys_lookup

  key_ring = each.value.key_ring
  filter   = each.value.filter
}

