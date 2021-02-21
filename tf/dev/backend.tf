terraform {
  backend "gcs" {
    bucket = "buidl-grants-tf"
    prefix = "terraform/state"
  }
}

