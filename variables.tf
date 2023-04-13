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

variable "tunnel_service_path" {
  description = "Path to the service you want to expose through the tunnel (ex: http://192.168.1.5:8000)"
  type        = string
}

variable "application_name" {
  description = "Name of the Cloudflare Access Application you want to use to protect the tunnel"
  type        = string
}

variable "application_domain" {
  description = "Cloudflare Access Application Domain (ex: tunnel.example.com)"
  type        = string
}

variable "application_service_token_name" {
  type        = string
  description = "Name of the service token to use for your Cloudflare Access Application"
}
