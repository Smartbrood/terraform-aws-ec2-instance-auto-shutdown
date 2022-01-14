terraform {
  required_version = ">= 1.1.3"
}

# TODO: change region and profile
provider "aws" {
  region  = "eu-west-1"
  profile = "petrov"
}
