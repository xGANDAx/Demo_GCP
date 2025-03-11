variable "machine_type" {
  default = "e2-micro"
  description = "The machine type for the instance"
  type = string
}

variable "instance_name" {
  type = string
  description = "The name of the instance"
}

variable "zone" {
  type = string
  default = "us-east1-b"
  description = "The zone where the instance is goind to be created"
}

variable "project" {
  type = string
  description = "ID of the Google Cloud Project"
}

variable "network" {
  type = string
  description = "ID of the Google Virtual Network"
}

variable "subnetwork" {
  type = string
  description = "ID of the Google Virtual SubNetwork"
}