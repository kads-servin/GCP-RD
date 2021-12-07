resource "google_compute_instance" "terraform" {
  project      = var.project_id
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
 metadata_startup_script = <<-EOT
 #!/bin/bash
 sudo apt update
 sudo apt -y install cowsay
 udo /usr/games/cowsay "Look My Cowsay" | sudo tee /tmp/menssage.txt
EOT
  tags = ["demo-vm-instance"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = var.vpc_name
    subnetwork = var.subnet_name

    access_config {
    }

  }
}