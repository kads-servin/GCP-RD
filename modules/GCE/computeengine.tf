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
    #network = "new-network"
    #subnetwork = "sub-of-newnetwork"
    network = modules.Network.VPC
    subnetwork = modules.Network.Subnet
    access_config {
    }

  }
}