# Generate a random secret for the tunnel
resource "random_id" "tunnel_secret" {
  byte_length = 32
}

# Create a tunnel
resource "cloudflare_tunnel" "tunnel_1" {
  account_id = var.cloudflare_account_id
  name       = var.tunnel_name
  secret     = random_id.tunnel_secret.hex
}


# Tunnel configuration
resource "cloudflare_tunnel_config" "tunnel_config_1" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_tunnel.tunnel_1.id

  config {

    origin_request {
      connect_timeout = "20s"
    }

    ingress_rule {
      hostname = var.application_domain
      service  = "ssh://localhost:22"
    }

    # Catch-all rule to return 404
    ingress_rule {
      service = "http_status:404"
    }
  }
}

resource "cloudflare_tunnel_route" "example" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_tunnel.tunnel_1.id
  network    = "192.0.2.24/32"
  comment    = "New tunnel route for documentation"
}
