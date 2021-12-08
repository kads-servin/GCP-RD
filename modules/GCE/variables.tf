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

variable "subnet_name" {
  default = "Name of the network"
  description = "Name of the network"
}
