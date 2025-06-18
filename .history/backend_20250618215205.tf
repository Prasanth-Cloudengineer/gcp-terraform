
terraform {
  backend "remote" {
    organization = "prasanth-org"

    workspaces {
      name = "gcp-networking-dev"
    }
  }
}
