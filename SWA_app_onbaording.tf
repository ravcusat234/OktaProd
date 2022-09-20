variable "SWA_APP1_URL" {}

#variable Declaration above


resource "okta_app_swa" "SWAappUsingTF" {
  label          = "SWAappUsingTF"
  button_field   = "login"
  password_field = "password"
  username_field = "username"
  url            = "https://login.splunk.com"
  accessibility_self_service= "true"
}


#code for App onbaording SWA app1

resource "okta_app_swa" "SWAappUsingTFNew" {
  label          = "SWAappUsingTFNew"
  button_field   = "login"
  password_field = "password"
  username_field = "username"
  url            = var.SWA_APP1_URL
  accessibility_self_service= "true"
}
