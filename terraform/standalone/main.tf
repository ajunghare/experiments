terraform {
    required_version = ">= 1.3.8"
    
    required_providers {
      google = {
        source = "hashicorp/google"
        version = "~>4.6"
      }
    }
    
}

provider "google" {
    project = "testgcp-418404"
    region = "us-central1"
    zone = "us-central1-a"
}

# resource google_storage_bucket "GCS1" {
#     name = "bucket-from-tf"
#     location = "US"
# }

resource "google_sql_database_instance" "my-postgres-db1" {
  name = "my-postgres-db-tf"
  deletion_protection = false
  region = "us-central1"
  settings {
    tier= "db-f1-micro"
  }
  database_version = "POSTGRES_15"
}

resource "google_sql_user" "myuser" {
  name="temp"
  password = "temptemp"
  instance = google_sql_database_instance.my-postgres-db1.name
}