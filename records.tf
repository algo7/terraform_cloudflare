# Add the tunnel CNAME record to the domain
resource "cloudflare_record" "cf_tunnel_cname" {
  zone_id = var.cloudflare_zone_id
  name    = "test"
  value   = cloudflare_tunnel.tunnel_1.cname
  type    = "CNAME"
  comment = "Cloudflare Tunnel"
}
