# Network Module
module "network" {
  source        = "./modules/network"
  cidr          = var.cidr
  subnet1_cidr  = "10.0.0.0/24"
  subnet1_az    = "us-east-1a"
  subnet2_cidr  = "10.0.1.0/24"
  subnet2_az    = "us-east-1b"
}

# Security Module
module "security" {
  source  = "./modules/security"
  vpc_id  = module.network.vpc_id
}

# Compute Module
module "compute" {
  source             = "./modules/compute"
  ami_id             = "ami-0261755bbcb8c4a84"
  instance_type      = "t2.micro"
  security_group_id  = module.security.web_sg_id
  subnet1_id         = module.network.subnet1_id
  subnet2_id         = module.network.subnet2_id
  userdata1_file     = "userdata.sh"
  userdata2_file     = "userdata1.sh"
}

# Storage Module
module "storage" {
  source      = "./modules/storage"
  bucket_name = "neetbucket"
}

# Load Balancer Module
module "load_balancer" {
  source             = "./modules/load_balancer"
  alb_name           = "myalb"
  vpc_id             = module.network.vpc_id
  security_group_id  = module.security.web_sg_id
  subnet1_id         = module.network.subnet1_id
  subnet2_id         = module.network.subnet2_id
  instance1_id       = module.compute.webserver1_id
  instance2_id       = module.compute.webserver2_id
}

output "loadbalancer_dns" {
  value = module.load_balancer.alb_dns_name
}
