
terraform {
  backend "remote" {
    organization = "prasanth-org"

    workspaces {
      name = "gcp_with_terraform"
    }
  }
}
