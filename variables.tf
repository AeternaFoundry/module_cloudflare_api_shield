variable "api_shields" {
  description = <<EOT
Map of api_shields, attributes below
Required:
    - auth_id_characteristics
    - zone_id
EOT

  type = map(object({
    auth_id_characteristics = list(object({
      name = string
      type = string
    }))
    zone_id = string
  }))
}

