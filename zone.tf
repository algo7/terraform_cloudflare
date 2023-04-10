# Add the tunnel CNAME record to the domain
resource "cloudflare_record" "cf_tunnel_cname" {
  zone_id = var.cloudflare_zone_id
  name    = split(".", var.application_domain)[0]
  value   = cloudflare_tunnel.tunnel_1.cname
  type    = "CNAME"
  comment = "Cloudflare Tunnel"
  proxied = true
}
