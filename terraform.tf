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
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}


