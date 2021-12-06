resource "google_compute_instance" "terraform" {
  project      = "rd-gcp-kads"
  name         = "rd-create-instance-kads"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"
  metadata_startup_script = "startup.sh"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "new-network"
    subnetwork = "sub-of-newnetwork"
    access_config {
    }
  }
}