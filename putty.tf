
resource "google_compute_instance" "vm_default" {
  name         = "vm-default"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}  # Enables external IP
  }

  metadata = {
  ssh-keys = "prasanth:${file("D:/Desktop/putty_files/id_rsa.pub")}
  }


  tags = ["ssh"]
}

resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
