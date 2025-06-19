
resource "google_compute_network" "vpc_network" {
  project                 = "prj-github-prasanth"  
  name                    = "tfe-test-vpc"
  auto_create_subnetworks = true
  depends_on = [google_project_service.enable_apis]
}
