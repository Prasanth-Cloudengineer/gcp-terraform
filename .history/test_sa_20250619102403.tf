
resource "google_service_account" "sa" {
  account_id   = "tfe-test-service account"
  project      = "prj-github-prasanth"
  display_name = "TFE Test Service Account"
}
