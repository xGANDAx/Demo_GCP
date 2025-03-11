terraform{
    source="../../modules/virtual_network"
}

remote_state {
  backend = "gcs"
  config = {
    bucket         = "x_ganda_x_backend_terraform"
    prefix         = "terraform/virtual_network"
    project        = "consummate-tine-420115"
  }
}

inputs = {
    project = "consummate-tine-420115"
    network_name = "example-network"
    subnet_name = "example-subnet"
    region = "us-east1"
    ip_cidr_range = "10.2.0.0/16"
}