terraform {
  source = "${get_repo_root()}/provider/provider.tf"
}

inputs = {
  project_id = get_env("PROJECT_ID", "default_project")
  region     = "us-east1"
}