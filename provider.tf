provider "google"{
    project     = "prj-github-prasanth"
    credentials = var.GOOGLE_CREDENTIALS
    region      = "us-central1"
}