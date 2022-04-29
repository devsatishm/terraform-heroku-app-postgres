terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
    }
  }
}

provider "heroku" {}

resource "heroku_app" "app" {
  name                  = var.name
  region                = var.region
  space			= var.private_space
  organization  {
    name = var.team_name
  }
  buildpacks            = var.buildpacks
  config_vars           = var.config_vars
  sensitive_config_vars = var.sensitive_config_vars
}

resource "heroku_addon" "add_on" {
  app_id  = heroku_app.app.id
  plan = "heroku-postgresql:${var.tier}"
}
