resource "okta_user" "UserCreateUsingTF" {
  okta_user_admin_roles = ["APP_ADMIN", "USER_ADMIN"]
  first_name  = "TF1"
  last_name   = "User"
  login       = "TF1@mailinatorcom"
  email       = "TF1@mailinatorcom"
  status      = "ACTIVE"
}
