resource "google_service_account" "service_account" {
  account_id   = var.service_account
  display_name = var.service_account
  project      = var.project_id
}

resource "google_compute_instance" "terraform" {
  project      = var.project_id
  name         = lower(var.name)
  machine_type = var.machine_type
  zone         = var.zone
  metadata = {
    startup-script = file("${path.module}/startup.sh")
  }
  tags = ["demo-vm-instance"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network    = var.vpc_name
    subnetwork = var.subnet_name

    access_config {
    }

  }
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.service_account.email
    scopes = ["cloud-platform"]
  }
}