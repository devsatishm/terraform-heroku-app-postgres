variable "name" {
  type        = string
  description = "The name of the application. In Heroku, this is also the unique ID, so it must be unique and have a minimum of 3 characters."
}

variable "region" {
  type        = string
  description = "The region that the app should be deployed in. Defaults to US."
  default     = "virginia"
}

variable "private_space" {
  description  = "Heroku private space"
  type         = string
}

variable "team_name" {
  description = "Heroku team name"
  type    = string
}

variable "buildpacks" {
  type        = list
  description = "Buildpack names or URLs for the application. Defaults to Python."
  default     = ["heroku/python"]
}

variable "config_vars" {
  type        = map
  description = "Configuration variables for the application. The config variables in this map are not the final set of configuration variables, but rather variables you want present. That is, other configuration variables set externally won't be removed by Terraform if they aren't present in this list."
  default     = {}
}

variable "sensitive_config_vars" {
  type        = map
  description = "This argument is the same as config_vars. The main difference between the two is when sensitive_config_vars outputs are displayed on-screen following a terraform apply or terraform refresh, they are redacted, with <sensitive> displayed in place of their value. It is recommended to put private keys, passwords, etc in this argument."
  default     = {}
}

variable "tier" {
  type        = string
  description = "The Heroku PostreSQL tier. Defaults to Hobby."
  default     = "hobby-dev"
}
