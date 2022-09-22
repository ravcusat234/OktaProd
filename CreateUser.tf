resource "okta_user" "UserCreateUsingTF" {
  admin_roles = ["READ_ONLY_ADMIN"]
  first_name  = "TF1"
  last_name   = "User"
  login       = "TF1@mailinatorcom"
  email       = "TF1@mailinatorcom"
  status      = "ACTIVE"
}
