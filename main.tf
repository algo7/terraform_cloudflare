# Generate a random secret for the tunnel
resource "random_id" "tunnel_secret" {
  byte_length = 32
}

# Create a tunnel
resource "cloudflare_tunnel" "tunnel_1" {
  account_id = var.cloudflare_account_id
  name       = var.tunnel_name
  secret     = random_id.tunnel_secret.hex
  config_src = "cloudflare"
}


# Tunnel configuration
resource "cloudflare_tunnel_config" "tunnel_config_1" {
  account_id = var.cloudflare_account_id
  tunnel_id  = cloudflare_tunnel.tunnel_1.id

  config {

    warp_routing {
      enabled = true
    }

    # origin_request {
    #   # connect_timeout = "30s"
    #   no_tls_verify = true
    # }

    ingress_rule {
      hostname = var.application_domain
      service  = var.tunnel_service_path
      origin_request {
        connect_timeout          = "50s"
        no_tls_verify            = true
        disable_chunked_encoding = true
        access {
          team_name = var.access_team_name
          required  = true
          aud_tag   = [cloudflare_access_application.cf_application.aud]
        }
      }
    }

    # Catch-all rule to return 404
    ingress_rule {
      service = "http_status:404"
    }
  }
}
