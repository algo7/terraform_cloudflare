resource "cloudflare_tunnel" "example" {
  account_id = var.cloudflare_account_id
  name       = "my-tunnel"
  secret     = "AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg="
}
