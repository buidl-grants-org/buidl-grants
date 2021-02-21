provider "google" {
  project     = "${var.project_root}-${var.environment}"
  credentials = var.credentials
}

resource "google_project" "project" {
  name                = "${var.project_root}-${var.environment}"
  project_id          = "${var.project_root}-${var.environment}"
  auto_create_network = true
}

resource "google_project_service" "service" {
  for_each           = toset(var.services)
  service            = each.key
  project            = google_project.project.project_id
  disable_on_destroy = false
}

resource "google_app_engine_application" "app" {
  project     = google_project.project.project_id
  location_id = "us-central"
}

/*
resource "google_app_engine_application_url_dispatch_rules" "app" {
  dispatch_rules {
    domain  = var.dispatch_domain
    path    = var.dispatch_path
    service = var.dispatch_service
  }
}
*/

module iam {
  source = "../modules/iam"

  project                    = google_project.project.project_id
  environment                = var.environment
}
