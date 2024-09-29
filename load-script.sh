#!/bin/bash



# Connecting to cloud shell via SSH
gcloud auth login
# Uploading the file to a GCS bucket
gcloud storage cp $1 gs://loading-bucket-437011
