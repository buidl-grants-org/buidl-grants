variable project_root {
  type        = string
  description = "Project Root"
  default     = "buidl-grants"
}
variable environment {
  type        = string
  description = "Application environment"
  default     = "prod"
}
variable credentials {
  type    = string
  default = "../terraformsa.json"
}
variable services {
  type        = list
  description = "GCP platform services to enable in the project"
  default = [
    "appengine.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
  ]
}

variable dispatch_domain {
  type    = string
  default = "buidl-grants.com"
}

variable dispatch_path {
  type    = string
  default = "/*"
}

variable dispatch_service {
  type    = string
  default = "buidl-grants"
}
