include {
  path = "${get_repo_root()}/provider/terragrunt.hcl"
}

remote_state {
  backend = "gcs"
  config = {
    bucket         = "x_ganda_x_backend_terraform"
    prefix         = "terraform/backend"
    project        = get_env("PROJECT_ID", "default_project")
  }
}

terraform {
  source = "../../modules/cloud_storage_backend"
}

inputs = {
  bucket_name     = "x_ganda_x_backend_terraform"
  bucket_location = "us-east1"
}