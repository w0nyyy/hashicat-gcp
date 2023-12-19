module "network" {
  source  = "app.terraform.io/test-redy/network/google"
  version = "3.4.0"
  network_name = "gaurav-network"
  project_id = var.project
  # insert required variables here

  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}