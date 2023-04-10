output "tunnel_secret" {
  value       = random_id.tunnel_secret.hex
  description = "Cloudflare Tunnel Secret"
  sensitive   = true
}

output "tunnel_token" {
  value       = cloudflare_tunnel.tunnel_1.tunnel_token
  description = "Cloudflare Tunnel Token"
  sensitive   = true
}

output "tunnel_cname" {
  value       = cloudflare_tunnel.tunnel_1.cname
  description = "CNAME record for accessing the tunnel"
}


output "service_token" {
  value       = cloudflare_access_service_token.app_service_token.client_secret
  description = "Cloudflare Access Application Service Token"
  sensitive   = true
}
