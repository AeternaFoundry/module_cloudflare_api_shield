output "api_shields_id" {
  description = "Map of id values across all api_shields, keyed the same as var.api_shields except keys with no id are omitted"
  value       = { for k, v in cloudflare_api_shield.api_shields : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_shields_auth_id_characteristics" {
  description = "Map of auth_id_characteristics values across all api_shields, keyed the same as var.api_shields except keys with no auth_id_characteristics are omitted"
  value       = { for k, v in cloudflare_api_shield.api_shields : k => v.auth_id_characteristics if v.auth_id_characteristics != null && length(v.auth_id_characteristics) > 0 }
}
output "api_shields_zone_id" {
  description = "Map of zone_id values across all api_shields, keyed the same as var.api_shields except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_api_shield.api_shields : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

