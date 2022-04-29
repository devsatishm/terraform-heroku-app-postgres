# terraform-heroku-app-postgres

A Terraform module to set up a Heroku app for hosting a web application with a PostgreSQL database.

## Features

- A Heroku application created with a specified buildpack (Defaults to Python) and region (Defaults to US).
- A Heroku Postgres database provisioned for the application (Defaults to Hobby tier).
- The ability to provide configuration variables for the provisioned Heroku application.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development. See local usage for notes on how to deploy the project.

### Prerequisites

To run this module you need [Terraform](https://www.terraform.io/).


### Dependencies

```sh
Terraform v1.1.9
on darwin_amd64
+ provider registry.terraform.io/hashicorp/random v3.1.3
+ provider registry.terraform.io/heroku/heroku v5.0.2
```

### Local Usage

Clone the project.

```sh
git clone https://github.com/devsatishm/terraform-heroku-app-postgres.git
```

Use `init` to install the project dependencies.

```sh
cd terraform-heroku-app-postgres
terraform init
```

Set the Heroku credentials.
```sh
heroku login
```

Alternatively, if you are running this in non-corp account, set the `HEROKU_EMAIL` and `HEROKU_API_KEY` environment variables using your Heroku credentials.

```sh
export HEROKU_EMAIL="ops@email.com"
export HEROKU_API_KEY="heroku_api_key"
```

Update the `terraform.auto.tfvars` file by assigining values to the variables.


Run a `plan` and pass in the desired variables to view the Terraform execution plan. For more information on each variable, view the [variables.tf](./variables.tf) file.

```sh
terraform plan
```

When you are ready to deploy the Heroku infrastructure, run `apply`.

```sh
terraform apply
```

For cleanup, run `destoy`.

```sh
terraform destroy
```
