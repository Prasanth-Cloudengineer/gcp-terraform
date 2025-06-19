
variable "project_id" {
  type = string
}

locals {
  apis = [
    "compute.googleapis.com",
    "iam.googleapis.com",
    "storage.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "servicenetworking.googleapis.com",
    "dns.googleapis.com",
    "monitoring.googleapis.com",
    "logging.googleapis.com",
    "cloudfunctions.googleapis.com",
    "cloudbuild.googleapis.com",
    "artifactregistry.googleapis.com",
    "run.googleapis.com"
    # add more as needed
  ]
}

resource "google_project_service" "enabled_apis" {
  for_each = toset(local.apis)

  project = var.project_id
  service = each.key

  disable_on_destroy = false
}
