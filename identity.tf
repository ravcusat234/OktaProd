variable "org_name" {}
variable "api_token" {}
variable "base_url" {}

# Enable and configure the Okta provider
terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 3.15"
    }
  }
}

provider "okta" {
    org_name = var.org_name
    base_url = var.base_url
    api_token = var.api_token
}




resource "okta_group" "testmyterraformgroup123" {
  name        = "testmyterraformgroup123"
  description = "Testing Terraform Group123"
}

resource "okta_auth_server" "ExampleServer" {
  audiences   = ["api://example"]
  description = "My Example Auth Server"
  name        = "example"
  issuer_mode = "ORG_URL"
  status      = "ACTIVE"
}

