variable "project" {
  description = "Project ID"
  type = string
}

variable "bucket" {
  description = "Name of bucket used for storing terraform state"
  default = "codecomp3-gcp"
}

variable "region" {
  default = "us-central1"
}

variable "appengineLocation" {
  default = "us-central"
}

variable "zone" {
  default = "us-central1-f"
}

variable "credentials" {
  type = string
}

variable "service_list" {
    type = list
    default = [
	"cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com",
    "logging.googleapis.com",
    "iam.googleapis.com",
    "admin.googleapis.com",
    "appengine.googleapis.com",
    "storage-api.googleapis.com",
    "cloudbuild.googleapis.com",
	"containerregistry.googleapis.com",
  ]
}
