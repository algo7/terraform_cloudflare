variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
}

variable "cloudflare_account_id" {
  description = "Cloudflare Account ID"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID of the domain that will be used for the tunnel"
  type        = string
}

variable "tunnel_name" {
  description = "Cloudflare Tunnel Name"
  type        = string
}

variable "application_name" {
  description = "Cloudflare Access Application Name"
  type        = string
}


variable "application_domain" {
  description = "Cloudflare Access Application Domain (ex: tunnel.example.com)"
  type        = string
}
