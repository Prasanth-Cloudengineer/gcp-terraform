variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "ssh_user" {
  description = "SSH username to log in to the VM"
  type        = string
}

variable "public_key_path" {
  description = "Path to your public SSH key file"
  type        = string
}
