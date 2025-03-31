include {
  path = "${get_repo_root()}/provider/terragrunt.hcl"
}

dependency "virtual_network" {
  config_path = "../virtual_network"
  mock_outputs = {
    network_id = "vpc-123456"
    subnet_id  = "subnet-123456"
  }
}
remote_state {
  backend = "gcs"
  config = {
    bucket  = "x_ganda_x_backend_terraform"
    prefix  = "terraform/compute_engine"
    project = get_env("PROJECT_ID", "default_project")
  }
}

terraform {
  source = "../../modules/compute_engine"
}

inputs = {
  instance_name = "example-instance",
  zone          = "us-east1-b"
  project       = get_env("PROJECT_ID", "default_project")
  network       = dependency.virtual_network.outputs.network_id
  subnetwork    = dependency.virtual_network.outputs.subnet_id
}