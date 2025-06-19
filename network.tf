
resource "google_compute_network" "vpc_network" {
  project                 = "prj-github-prasanth"  
  name                    = "tfe-test-vpc"
  auto_create_subnetworks = true
}
