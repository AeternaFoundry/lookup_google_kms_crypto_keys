output "kms_crypto_keys_lookup_id" {
  description = "Map of id values across all kms_crypto_keys_lookup, keyed the same as var.kms_crypto_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_kms_crypto_keys.kms_crypto_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_crypto_keys_lookup_filter" {
  description = "Map of filter values across all kms_crypto_keys_lookup, keyed the same as var.kms_crypto_keys_lookup except keys with no filter are omitted"
  value       = { for k, v in data.google_kms_crypto_keys.kms_crypto_keys_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "kms_crypto_keys_lookup_key_ring" {
  description = "Map of key_ring values across all kms_crypto_keys_lookup, keyed the same as var.kms_crypto_keys_lookup except keys with no key_ring are omitted"
  value       = { for k, v in data.google_kms_crypto_keys.kms_crypto_keys_lookup : k => v.key_ring if v.key_ring != null && length(v.key_ring) > 0 }
}
output "kms_crypto_keys_lookup_keys" {
  description = "Map of keys values across all kms_crypto_keys_lookup, keyed the same as var.kms_crypto_keys_lookup except keys with no keys are omitted"
  value       = { for k, v in data.google_kms_crypto_keys.kms_crypto_keys_lookup : k => v.keys if v.keys != null && length(v.keys) > 0 }
}

