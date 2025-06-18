
terraform {
  backend "remote" {
    organization = "my-org-name"

    workspaces {
      name = "gcp-networking-dev"
    }
  }
}
