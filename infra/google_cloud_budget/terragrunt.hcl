remote_state {
  backend = "gcs"
  config = {
    bucket  = "x_ganda_x_backend_terraform"
    prefix  = "terraform/google_cloud_budget"
    project = get_env("PROJECT_ID", "default_project")
  }
}

terraform {
  source = "../../modules/google_cloud_budget"
}

inputs = {
  billing_account = get_env("BILLING_ACCOUNT", "default_billing_account")
  amount          = 1
}