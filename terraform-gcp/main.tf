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
  name = "filestore-network"
}

resource "google_filestore_instance" "instance" {
  name     = "filestore-instance"
  location = "central-europe2-c"
  tier     = "BASIC_HDD"

  file_shares {
    capacity_gb = 10
    name        = "max-store"
  }

  networks {
    network = google_compute_network.vpc_network.name
    modes   = ["MODE_IPV4"]
  }
}

