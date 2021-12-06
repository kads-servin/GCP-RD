resource "google_compute_network" "new-network"{
    project = var.project_id
    name = var.vpc_name
    auto_create_subnetworks = false
    
}

resource "google_compute_subnetwork" "sub-of-newnetwork"{
    name = var.subnet_name
    network = google_compute_network.new-network.id
    ip_cidr_range = var.ip_cidr_range
    region = var.region
}

output "custom"{
    value = google_compute_network.new-network.id
}

output "VPC"{
    value = google_compute_network.new-network.name
}

output "Subnet"{
    value = google_compute_subnetwork.sub-of-newnetwork.name
}