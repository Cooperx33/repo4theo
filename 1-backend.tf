# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "repo_bucket1"
    prefix = "terraform/state"
    credentials = "coops-custom-class65-255f7961b3ea.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}