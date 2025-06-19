/*
resource "google_compute_instance" "vm_default" {
  project      = "prj-github-prasanth"  
  name         = "putty-vm"
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

#  metadata = {
#    ssh-keys = <<EOT
#prasanth=${file("D:/Desktop/putty_files/id_rsa.pub")}
#EOT
#  }

metadata = {
  ssh-keys = <<EOT
prasanth:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCQDxJ4oYAOn9y7Ik0qTT0s+STS2KFjSd+M5O2kBMUnqnTj8rVgUQ4BGGAtt2f55zECPTwF3Z3IJ2EPSH+51+nWCVP5N7jXg4jpmAAvyaIaoGtdjxDgTqGQ8qP/lOwoxKxHiRsnLIHYvGczE1Dxr9AJFzbkiiJxA86+4pKakEi1C5yU4YVcyITigTQw0WICEwQa78BFwhCVkxBRAinkTipGbkrHW06uhd3TJf9itezf+Nkzf1+e5RtvS0kvTwoT5/Sjg42sm0KpWgVRRw/cxXmzSt5cNNYjNizWSMftbuLvHd56EC19RDGn01l2k84uV21KFjRJW+Vt+kqj2MVjw2Jf rsa-key-20250619
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
*/