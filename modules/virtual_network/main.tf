resource "google_compute_network" "example_network" {
  name                    = var.network_name
  project                 = var.project
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "examples_subnetwork" {
  name          = var.subnet_name
  project       = var.project
  region        = var.region
  network       = google_compute_network.example_network.id
  ip_cidr_range = var.ip_cidr_range
}
