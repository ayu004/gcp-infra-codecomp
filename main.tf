provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
}

terraform {
  required_version = ">= 0.12.6"
  backend "gcs" {
    bucket = "codecomp3-<team-name>"
  }
}

resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = "Terraform Service Account"
}

resource "google_project_iam_binding" "project" {
  project = "your-project-id"
  role    = "roles/appengine.appAdmin"

  members = ["service-account mail id",]
}

resource "google_project_service" "project" {
  project = var.project
  count   = length(var.service_list)
  service = var.service_list[count.index]

  disable_dependent_services = true
}
