resource "google_compute_instance" "terraform" {
  project      = var.project_id
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  metadata_startup_script = var.metadata_startup_script
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