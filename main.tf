terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
  
  backend "gcs" {
    bucket  = "codecomp3-champ"
    prefix  = "terraform/state"
  }
}

provider "google" {
 project     = "gcp-terraform-289514"
 region      = "us-west1"
}
