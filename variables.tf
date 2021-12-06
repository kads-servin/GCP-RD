variable "name" {
    default = "rd-create-instance-kads"
}

variable "machine_type" {
    default = "e2-standard-2"
}

variable "zone" {
    default = "us-central1-a"
}

variable "metadata_startup_scrip" {
    default = "startup.sh"
}
variable "image" {
    default = "ubuntu-1804-lts"
}
variable "project_id" {
    default = "rd-gcp-kads"
}

variable "vpc_name" {
    default = "new-network"
}

variable "subnet_name" {
    default = "new-network"
}

variable "ip_cidr_range" {
    default = "10.1.0.0/21"
}

variable "region" {
    default = "us-central1"
}
