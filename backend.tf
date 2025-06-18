
terraform {
  backend "remote" {
    organization = "Prasanth-org"

    workspaces {
      name = "gcp_with_terraform"
    }
  }
}