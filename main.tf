provider "google" {
  project = var.project_id
  region  = "us-central1"
  # credentials = file("./terraform.json")
}

terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
  # backend "gcs" {
  #   bucket = "${var.project_id}-${var.tf_backend}"
  #   prefix = "terraform/state"
  # }
}
