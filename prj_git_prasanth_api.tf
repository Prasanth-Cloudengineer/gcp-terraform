
#Enable Cloud Resource Manager API manually
/*
resource "google_project_service" "enable_apis" {
  for_each = toset(var.api_services)

  project = "prj-github-prasanth"
  service = each.key
  disable_on_destroy = false
}
*/