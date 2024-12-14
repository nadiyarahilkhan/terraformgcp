provider "google" {
  project     = "apt-memento-442605-f0"
  region      = "us-central1"
  credentials= file("/root/tf_base/terraformgcp/apt-memento-442605-f0-0c8ea3a0fc68.json")
}
resource "google_storage_bucket" "tf" {
  name     = "tf-bucket-gcp"
  location = "us-central1"
}
