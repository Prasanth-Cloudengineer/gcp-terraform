
resource "google_project_service" "enable_apis" {
  for_each = toset(var.api_services)

  project = var.project
  service = each.key

  disable_on_destroy = false
}
