output "custom" {
  value = google_compute_network.new-network.id
}

output "VPC" {
  value = google_compute_network.new-network.name
}

output "Subnet" {
  value = google_compute_subnetwork.sub-of-newnetwork.name
}