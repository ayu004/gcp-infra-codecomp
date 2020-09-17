terraform {
  backend "gcs" {}
}

# Download any stable version in AWS provider of 2.36.0 or higher in 2.36 train
provider "google" {
  credentials = var.credentials
  project = var.project
  region  = var.region
}

resource "google_project_service" "enableServices" {
  project = var.project
  count   = length(var.service_list)
  service = var.service_list[count.index]

  disable_dependent_services = true
}

resource "google_app_engine_application" "app" {
  project = var.project
  depends_on = [google_project_service.enableServices]
  location_id = var.appengineLocation
}