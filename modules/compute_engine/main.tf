resource "google_compute_instance" "example_instance" {
  name         = var.instance_name
  zone         = var.zone
  machine_type = var.machine_type
  project      = var.project 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork
  }
}
