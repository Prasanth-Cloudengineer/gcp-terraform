
resource "google_service_account" "sa" {
  account_id   = "tfe-test-sa"
  project      = 
  display_name = "TFE Test Service Account"
}
