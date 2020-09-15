terraform {
  required_version = ">=0.12.13"
  #backend "s3" {
  #  bucket         = "kyler-github-actions-demo-terraform-tfstate"
  #  key            = "terraform.tfstate"
  #  region         = "us-east-1"
  #  dynamodb_table = "aws-locks"
  #  encrypt        = true
  #}
}

# Download any stable version in AWS provider of 2.36.0 or higher in 2.36 train
provider "google" {
  project = "gcp-terraform-289514"
  region  = "us-west1"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
