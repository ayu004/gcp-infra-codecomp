variable "project" {
  description = "Project ID"
  default     = "codecomp3-<team-name>"
}

variable "region" {
  default = "us-central1"

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
  ]
}
