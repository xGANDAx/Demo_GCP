terraform{
    source="../../modules/virtual_network"
}

remote_state {
  backend = "gcs"
  config = {
    bucket         = "x_ganda_x_backend_terraform"
    prefix         = "terraform/virtual_network"
    project        = get_env("PROJECT_ID", "default_project")
  }
}

inputs = {
    project = get_env("PROJECT_ID", "default_project")
    network_name = "example-network"
    subnet_name = "example-subnet"
    region = "us-east1"
    ip_cidr_range = "10.2.0.0/16"
}