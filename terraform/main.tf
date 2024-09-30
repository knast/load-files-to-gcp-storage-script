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


resource "google_storage_bucket" "static-1" {
  name                        = "loading-bucket-437011-1"
  location                    = "europe-central2"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  force_destroy               = "true"

}


resource "google_storage_bucket" "static-2" {
  name                        = "loading-bucket-437011-2"
  location                    = "europe-central2"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  force_destroy               = "true"
}

resource "google_storage_bucket" "static-3" {
  name                        = "loading-bucket-437011-3"
  location                    = "europe-central2"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  force_destroy               = "true"
}
