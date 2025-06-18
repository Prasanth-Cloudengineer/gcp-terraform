
terraform {
  backend "remote" {
    organization = "prasanth-org"

    workspaces {
      name = ""
    }
  }
}
