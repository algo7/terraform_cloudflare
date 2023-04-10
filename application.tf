resource "cloudflare_access_application" "cf_application" {
  account_id                = var.cloudflare_account_id
  name                      = var.application_name
  domain                    = var.application_domain
  type                      = "self_hosted"
  session_duration          = "24h"
  auto_redirect_to_identity = false
}
