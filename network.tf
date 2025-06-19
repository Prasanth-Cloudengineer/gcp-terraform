
resource "google_compute_network" "vpc_network" {
  name                    = "tfe-test-vpc"
  auto_create_subnetworks = true
}
