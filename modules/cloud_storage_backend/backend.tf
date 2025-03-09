terraform {
  backend "gcs" {
    bucket = "x_ganda_x_backend_terraform"
    prefix = "terraform/backend"
  }
}
