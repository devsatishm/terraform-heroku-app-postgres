resource "random_string" "secret_key" {
  length = 16
}

resource "heroku_app" "flask_app" {
  name       = "${var.name}"
  region     = "us"
  buildpacks = ["heroku/python"]
  sensitive_config_vars = {
    SECRET_KEY = "${random_string.secret_key.result}"
  }
}

resource "heroku_addon" "postgres_db" {
  app  = "${heroku_app.flask_app.name}"
  plan = "heroku-postgresql:hobby-dev"
}
