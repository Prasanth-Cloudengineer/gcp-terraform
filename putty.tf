
resource "google_compute_instance" "vm_default" {
  project      = "prj-github-prasanth"  
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
/*
  metadata = {
    ssh-keys = <<EOT
prasanth=${file("D:/Desktop/putty_files/id_rsa.pub")}
EOT
  }
  */

metadata = {
  ssh-keys = <<EOT
prasanth=${file("id_rsa.pub")}
EOT
}


  tags = ["ssh"]
}

resource "google_compute_firewall" "allow_ssh" {
  project      = "prj-github-prasanth"  
  name    = "allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
