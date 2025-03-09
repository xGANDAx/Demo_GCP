variable "bucket_name" {
  description = "The name of the GCP Bucket."
  type = string
}

variable "bucket_location" {
  type = string
  description = "The region where the bucket is going to be created."
}