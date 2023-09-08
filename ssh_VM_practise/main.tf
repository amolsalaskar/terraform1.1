provider "google" {
  project = local.project_id
  region  = local.region
  credentials = "my-terraform-1402-8a6d900ad485.json"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.31.0"
    }
  }
    backend "gcs" {
   bucket      = "terraform_1402"
    prefix      = "terraform/state"
    credentials = "my-terraform-1402-8a6d900ad485.json"
  }

  required_version = "~> 1.0"
}