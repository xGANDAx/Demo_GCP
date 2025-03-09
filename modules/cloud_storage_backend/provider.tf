provider "google" {
  project     = get_env("PROJECT_ID", "default_project")
  region      = "us-east1"
}