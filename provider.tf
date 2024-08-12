# Configuring the Provider

provider "aws" {
  region = var.region

}

module "module" {
  source = "./module"

}