terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"

    }
  }
  backend "gcs" {
   bucket      = "terraform_1402"
    prefix      = "terraform/state"
    credentials = "my-terraform-1402-8a6d900ad485.json"
  }
}

provider "google" {
  region      = var.region
  zone        = var.zone
  project     = var.project
  credentials = "my-terraform-1402-8a6d900ad485.json"

}

locals {
  application_name = "microservice1"
  environement     = "staging"
}

resource "google_compute_instance" "default1" {
  name         = "terraform-instance1"
  machine_type = var.machine_type
  labels = {
    application_name = local.application_name
    environement     = local.environement
  }
  allow_stopping_for_update = true
  
  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq nginx; sudo service nginx restart"

  network_interface {
    network = "default"
    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}

