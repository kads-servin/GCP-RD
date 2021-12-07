module "create_vpc"{
    source = "./modules/Network"
    project_id = var.project_id
    vpc_name = var.vpc_name
    subnet_name = var.subnet_name 
    ip_cidr_range = var.ip_cidr_range
    region = var.region
}

module "create_gce"{
    source = "./modules/GCE"
    project_id = var.project_id
    name = var.name
    machine_type = var.machine_type
    zone = var.zone
    image = var.image
    vpc_name = var.vpc_name
    subnet_name = var.subnet_name 
    depends_on = [module.create_vpc]
}