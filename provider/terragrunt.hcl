terraform {
  source = "${get_repo_root()}/provider/provider.tf"
}

inputs = {
  project_id = "consummate-tine-420115"
  region     = "us-east1"
}