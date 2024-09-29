terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "terraform-gcp-437011"
}

resource "google_compute_network" "vpc_network" {
  name = "bucket-network"
}

resource "google_storage_bucket" "static" {
  name                        = "loading-bucket-437011"
  location                    = "europe-central2"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

}

