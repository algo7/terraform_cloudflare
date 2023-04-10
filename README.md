## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.3.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_access_application.cf_application](https://registry.terraform.io/providers/cloudflare/cloudflare/4.3.0/docs/resources/access_application) | resource |
| [cloudflare_access_policy.cf_application_policy](https://registry.terraform.io/providers/cloudflare/cloudflare/4.3.0/docs/resources/access_policy) | resource |
| [cloudflare_access_service_token.app_service_token](https://registry.terraform.io/providers/cloudflare/cloudflare/4.3.0/docs/resources/access_service_token) | resource |
| [cloudflare_record.cf_tunnel_cname](https://registry.terraform.io/providers/cloudflare/cloudflare/4.3.0/docs/resources/record) | resource |
| [cloudflare_tunnel.tunnel_1](https://registry.terraform.io/providers/cloudflare/cloudflare/4.3.0/docs/resources/tunnel) | resource |
| [cloudflare_tunnel_config.tunnel_config_1](https://registry.terraform.io/providers/cloudflare/cloudflare/4.3.0/docs/resources/tunnel_config) | resource |
| [random_id.tunnel_secret](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_domain"></a> [application\_domain](#input\_application\_domain) | Cloudflare Access Application Domain (ex: tunnel.example.com) | `string` | n/a | yes |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Name of the Cloudflare Access Application you want to use to protect the tunnel | `string` | n/a | yes |
| <a name="input_cloudflare_account_id"></a> [cloudflare\_account\_id](#input\_cloudflare\_account\_id) | Cloudflare Account ID | `string` | n/a | yes |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | Cloudflare API Token | `string` | n/a | yes |
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | Cloudflare Zone ID of the domain that will be used for the tunnel | `string` | n/a | yes |
| <a name="input_tunnel_name"></a> [tunnel\_name](#input\_tunnel\_name) | Cloudflare Tunnel Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_token"></a> [service\_token](#output\_service\_token) | Cloudflare Access Application Service Token |
| <a name="output_service_token_id"></a> [service\_token\_id](#output\_service\_token\_id) | Cloudflare Access Application Service Token ID |
| <a name="output_tunnel_cname"></a> [tunnel\_cname](#output\_tunnel\_cname) | CNAME record for accessing the tunnel |
| <a name="output_tunnel_secret"></a> [tunnel\_secret](#output\_tunnel\_secret) | Cloudflare Tunnel Secret |
| <a name="output_tunnel_token"></a> [tunnel\_token](#output\_tunnel\_token) | Cloudflare Tunnel Token |
