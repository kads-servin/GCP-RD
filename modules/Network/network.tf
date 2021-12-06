resource "google_compute_network" "new-network"{
    project = "rd-gcp-kads"
    name = "new-network"
    auto_create_subnetworks = false
    
}

resource "google_compute_subnetwork" "sub-of-newnetwork"{
    name = "sub-of-newnetwork"
    network = google_compute_network.new-network.id
    ip_cidr_range = "10.1.0.0/21"
    region = "us-central1"
}

output "custom"{
    value = google_compute_network.new-network.id
}