resource "google_storage_bucket" "example_bucket" {
  name     = var.bucket_name
  location = var.bucket_location
  versioning {
    enabled = true
  }
}
