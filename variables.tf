variable "project_id" {
    default = "rd-gcp-kads"
    description = "Project Id in GCP"
}

variable "name" {
    default = "rd-create-instance-kads"
    description = "Name of the VM"
}

variable "machine_type" {
    default = "e2-standard-2"
    description = "Type of machine that we are going to create"
}

variable "zone" {
    default = "us-central1-a"
    description = "Type of zone that we are going to define"
}

variable "image" {
    default = "ubuntu-os-cloud/ubuntu-2004-lts"
    description = "Ubuntu version that we are going to create"
}
variable "vpc_name" {
    default = "new-network"
    description = "Name of the network"
}

variable "ip_cidr_range" {
    default = "10.1.0.0/21"
    description = "Range"
}

variable "region" {
    default = "us-central1"
    description = "Type of region that we are going to define"
}

variable "firewall_name" {
    default = "rd-gcp-ssh-access"
    description = "Name of the firewall"
}

variable "firewall_protocol" {
    default = "tcp"
    description = "Type of protocol"
}

variable "firewall_port" {
    default = "22"
    description = "Number of port in this case ssh port"
}
variable "target_tags" {
    default = "demo-vm-instance"
    description = "Rule applied to the VPC network"
}
variable "source_ranges" {
    default = "0.0.0.0/0"
    description = "Source IP"
}

variable "startup_script" {
    default = "starup-sh"
    description = "connect via ssh"
}
variable "subnet_name" {
    default = "sub-of-newnetwork"
    description = "Name of the subnet"
}

