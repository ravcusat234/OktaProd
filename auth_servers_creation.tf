resource "okta_auth_server" "CustomAS" {
  audiences   = ["api://exampleAS"]
  description = "My Custome AS"
  name        = "CustomAS" 
  issuer_mode = "ORG_URL"
  status      = "ACTIVE"
}