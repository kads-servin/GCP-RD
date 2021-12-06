resource "google_compute_network" "new-network"{
    project = "rd-gcp-kads"
    name = "new-network"
    auto_create_subnetworks = false
    
}

output "custom"{
    value = google_compute_network.new-network.id
}