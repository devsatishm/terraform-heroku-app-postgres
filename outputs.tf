output "id" {
  description = "The ID of the app. This is also the name of the application."
  value       = "${heroku_app.flask_app.id}"
}

output "git_url" {
  description = "The Git URL for the application. This is used for deploying new versions of the app."
  value       = "${heroku_app.flask_app.git_url}"
}

output "web_url" {
  description = "The web (HTTP) URL that the application can be accessed at by default."
  value       = "${heroku_app.flask_app.web_url}"
}
