terraform {
  backend "s3" {
    bucket = "flask-terraform-state-XXXXX"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}
