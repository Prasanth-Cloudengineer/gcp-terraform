
resource "google_service_account" "sa" {
  account_id   = "tfe-test-sa"
  project      = "prj-github-prasanth"
  display_name = "TFE Test Service Account"
}
