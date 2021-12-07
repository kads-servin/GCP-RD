variable "project_id" {
    default = "rd-gcp-kads"
}

variable "name" {
    default = "rd-create-instance-kads"
}

variable "machine_type" {
    default = "e2-standard-2"
}

variable "zone" {
    default = "us-central1-a"
}

variable "image" {
    default = "ubuntu-os-cloud/ubuntu-2004-lts"
}
variable "vpc_name" {
    default = "new-network"
}

variable "subnet_name" {
  default = "sub-of-newnetwork"
}

variable "startup_script" {
  default = "modules/GC/startup.sh"
}