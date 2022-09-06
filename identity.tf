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
resource "okta_user_schema_property" "passport" {
  index  = "passport"
  title  = "Passport"
  type   = "string"
  master = "PROFILE_MASTER"
}


resource "okta_group" "example123" {
  name        = "Example123"
  description = "My Example Group123"
}
resource "okta_group" "testmyterraformgroup" {
  name        = "testmyterraformgroup"
  description = "Testing Terraform Group"
}
resource "okta_group" "testmyterraformgroup123" {
  name        = "testmyterraformgroup123"
  description = "Testing Terraform Group123"
}

