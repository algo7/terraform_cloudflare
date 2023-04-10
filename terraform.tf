/**
* ## Description
* This module creates a Cloudflare Tunnel for SSH and Access Application.
* This project uses R2 as the backend as it is also compatible with S3.
* Refer to config.r2.backend.example for detailed backend configuration.
* Initialize the backend with `terraform init -backend-config=./config.r2.tfbackend` (remember to change the file name)
*
* ## Prerequisites
* - Cloudflare Account
* - Cloudflare Account ID
* - Cloudflare Zone ID of the domain that will be used for the tunnel
* - Cloudflare API Token 
*  - Account Permissions (edit):
*     1. Access: Service Tokens, 
*     2. Access: Apps and Policies
*     3. Cloudflare Tunnel
*  - Zone Permissions (edit):
*     1. DNS
* - Cloudflare R2 Bucket
* - R2 Access Key and Secret Key with Read/Write permissions
* ## Notes
* Cloudflare Terraform Provider as a bug regarding the Cloudflare Tunnel. Please refer to the following link for more details:
* https://github.com/cloudflare/terraform-provider-cloudflare/issues/2366
*/
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.3.0"
    }
  }

  backend "s3" {}
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}


