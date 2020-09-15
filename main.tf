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
  credentials = var.credentials
  project = "gcp-terraform-289514"
  region  = "us-west1"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "codecomp3-bigboss"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = "3"
    }
    action {
      type = "Delete"
    }
  }
}
