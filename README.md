# terraform-heroku-flask-postgres

A Terraform module to set up a Heroku app for hosting a Flask application with a PostgreSQL database.

## Features

- A Heroku application created with the Python buildpack.
- A Heroku Postgres database provisioned for the application.
- An auto-generated Flask `SECRET_KEY` set as a config var.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development. See local usage for notes on how to deploy the project.

### Prerequisites

To run this module you need [Terraform](https://www.terraform.io/).

### Local Usage

Clone the project.

```
git clone https://github.com/aqche/terraform-heroku-flask-postgres.git
```

Use `init` to install the project dependencies.

```
cd terraform-heroku-flask-postgres
terraform init
```

Set the `HEROKU_EMAIL` and `HEROKU_API_KEY` environment variables using your Heroku credentials.

```
export HEROKU_EMAIL="ops@company.com"
export HEROKU_API_KEY="heroku_api_key"
```

Run a `plan` and pass in the desired name of your Heroku application to view the Terraform execution plan.

```
terraform plan -var 'name=heroku-app-name'
```

When you are ready to deploy the Heroku infrastructure, run `apply`.

```
terraform apply -var 'name=heroku-app-name'
```

### Module Usage

To use this module in your own Terraform code, simply source this repository and pass in the desired name of your Heroku application.

```hcl
module "terraform-heroku-flask-postgres" {
  source = "github.com/aqche/terraform-heroku-flask-postgres.git"
  name   = "heroku-app-name"
}
```

## Built With

- [Heroku Provider](https://www.terraform.io/docs/providers/heroku/) - Terraform Provider
- [Random Provider](https://www.terraform.io/docs/providers/random/) - Terraform Provider

## Contributing

Feel free to submit a pull request!

## Authors

- **aqche** - _Author_ - [aqche](https://github.com/aqche)

See also the list of [contributors](https://github.com/aqche/terraform-heroku-flask-postgres/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for more details.
