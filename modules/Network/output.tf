output "custom" {
  value = google_compute_network.new-network.id
}

output "VPC" {
  value = google_compute_network.new-network.name
}

output "Subnet" {
  value = google_compute_subnetwork.sub-of-newnetwork.name
}

output "vpc_selflink" {
  value = google_compute_network.new-network.self_link
}

output "subnet_selflink" {
  value = google_compute_subnetwork.sub-of-newnetwork.self_link
}
