resource "google_compute_network" "new-network" {
  project                 = var.project_id
  name                    = var.vpc_name
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "sub-of-newnetwork" {
  project       = var.project_id
  name          = var.subnet_name
  network       = google_compute_network.new-network.id
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
}

resource "google_compute_firewall" "rd-gcp-ssh-access" {
  project = var.project_id
  name    = var.firewall_name
  network = var.vpc_name
  allow {
    protocol = var.firewall_protocol
    ports    = [var.firewall_port]
  }
  target_tags   = [var.target_tags]
  source_ranges = [var.source_ranges]

  depends_on = [google_compute_network.new-network]
}