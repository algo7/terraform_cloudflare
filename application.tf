resource "cloudflare_access_application" "cf_application" {
  account_id                = var.cloudflare_account_id
  name                      = var.application_name
  domain                    = var.application_domain
  type                      = "self_hosted"
  session_duration          = "24h"
  auto_redirect_to_identity = false
  app_launcher_visible      = false
}


resource "cloudflare_access_policy" "cf_application_policy" {
  application_id = cloudflare_access_application.cf_application.id
  account_id     = var.cloudflare_account_id
  name           = "ServiceAuth"
  precedence     = "1"
  decision       = "allow"

  include {
    service_token = [cloudflare_access_service_token.cf_service_token.id]
  }
}
