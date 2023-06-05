resource "cloudflare_access_application" "cf_application" {
  account_id                = var.cloudflare_account_id
  name                      = var.application_name
  domain                    = var.application_domain
  type                      = "self_hosted"
  session_duration          = "24h"
  auto_redirect_to_identity = false
  app_launcher_visible      = true
}


resource "cloudflare_access_policy" "service_auth" {
  application_id = cloudflare_access_application.cf_application.id
  account_id     = var.cloudflare_account_id
  name           = "ServiceAuth"
  precedence     = "1"
  decision       = "non_identity"

  include {
    service_token = [cloudflare_access_service_token.app_service_token.id]
  }
}


resource "cloudflare_access_policy" "github_oauth" {
  application_id = cloudflare_access_application.cf_application.id
  account_id     = var.cloudflare_account_id
  name           = "GitHub"
  precedence     = "2"
  decision       = "allow"

  include {
    email = var.application_allowed_emails
  }

  require {
    # If you hardcode "GitHub" here, it will fail
    login_method = [cloudflare_access_identity_provider.github.id]
  }
}
