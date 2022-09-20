


resource "okta_app_swa" "SWAappUsingTF" {
  label          = "SWAappUsingTF"
  button_field   = "login"
  password_field = "password"
  username_field = "username"
  url            = "https://login.splunk.com"
  accessibility_self_service= "true"
}


