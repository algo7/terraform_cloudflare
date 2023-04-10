/**
* ## Description
* Creates CF 0 Trust Tunnel
*/
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.3.0"
    }
  }

  backend "s3" {
    access_key             = var.r2_access_key_id
    secret_key             = var.r2_secret_access_key
    key                    = "cf-tunnel/terraform.tfstate"
    bucket                 = "mybucket"
    region                 = "us-east-1"
    skip_region_validation = true
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}


