variable "project_id" {
    default = "rd-gcp-kads"
}

variable "vpc_name" {
    default = "new-network"
}

variable "subnet_name" {
    default = "sub-of-newnetwork"
}

variable "ip_cidr_range" {
    default = "10.1.0.0/21"
}

variable "region" {
    default = "us-central1"
}

variable "firewall_name" {
    default = "rd-gcp-ssh-access"
}

variable "firewall_protocol" {
    default = "tcp"
}

variable "firewall_port" {
    default = "22"
}
variable "target_tags" {
    default = "demo-vm-instance"
}
variable "source_ranges" {
    default = "0.0.0.0/0"
}

variable "startup_script" {
    default = "starup-sh"
}