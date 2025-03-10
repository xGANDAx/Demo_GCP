include {
  path = "${get_repo_root()}/provider/terragrunt.hcl"
}

remote_state {
  backend = "gcs"
  config = {
    bucket         = "x_ganda_x_backend_terraform"
    prefix         = "terraform/compute_engine"
    project        = get_env("PROJECT_ID", "default_project")
  }
}

terraform {
  source = "../../modules/compute_engine"
}

inputs = {
    instance_name = "example-instance",
    zone = "us-east1-b"
    project = get_env("PROJECT_ID", "default_project")
}