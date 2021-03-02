resource "heroku_app" "app" {
  name                  = var.name
  region                = var.region
  buildpacks            = var.buildpacks
  config_vars           = var.config_vars
  sensitive_config_vars = var.sensitive_config_vars
}

resource "heroku_addon" "add_on" {
  app  = heroku_app.app.name
  plan = "heroku-postgresql:${var.tier}"
}
