resource "cloudflare_api_shield" "api_shields" {
  for_each = var.api_shields

  auth_id_characteristics = each.value.auth_id_characteristics
  zone_id                 = each.value.zone_id
}

