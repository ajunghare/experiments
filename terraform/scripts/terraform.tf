terraform {
    required_version = ">= 1.3.8"
    
    required_providers {
      google = {
        source = "hashicorp/google"
        version = "~>5.12"
      }
    }
    
}

provider "google" {
    project = "testgcp-418404"
    region = "us-central1"
    zone = "us-central1-a"
}