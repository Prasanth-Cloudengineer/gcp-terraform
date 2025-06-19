
#vIpugfW5ILILfQ.atlasv1.r0qyhEezj3BgAEzVzy8ON9wk8DlMaxDKDLWdAmiXDGz6eY0FH5aI5k0UCHEfFgGz7ZU
resource "google_project_service" "enable_apis" {
  for_each = toset(var.api_services)

  project = var.project_id
  service = each.key

  disable_on_destroy = false
}
