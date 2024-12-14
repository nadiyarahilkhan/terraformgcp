provider "google" {
  project     = "apt-memento-442605-f0"
  region      = "us-central1"
  credentials= file("/root/tf_base/terraformgcp/apt-memento-442605-f0-df6dc9fbfdef.json")
}
