output "tunnel_token" {
  value       = nonsensitive(cloudflare_tunnel.tunnel_1.tunnel_token)
  description = "Cloudflare Tunnel Token"
}

output "service_token" {
  value       = nonsensitive(cloudflare_access_service_token.app_service_token.client_secret)
  description = "Cloudflare Access Application Service Token"
}

output "service_token_id" {
  value       = cloudflare_access_service_token.app_service_token.client_id
  description = "Cloudflare Access Application Service Token ID"
}

# output "tunnel_cname" {
#   value       = cloudflare_tunnel.tunnel_1.cname
#   description = "CNAME record for accessing the tunnel"
# }

# output "tunnel_secret" {
#   value       = random_id.tunnel_secret.hex
#   description = "Cloudflare Tunnel Secret"
# }

