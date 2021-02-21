# Terraform

## Overview

The Terraform code here manages some of the infrastructure for the WUSTL Contact Tracing Project. It is currently split up into a module for each environment.

The infrastructure managed includes:
- Creation and assignment of IAM roles for everything except the Terraform Service Account.
- Creation of BigQuery datasets for the Looker service account
- Enablement of APIs
- Creation of the project

## Structure

The basic module structure consists of the following files:

- `main.tf` defines the logic for the module
- `backend.tf` sets up a GCP bucket to hold remote states for Terraform on init
- `variables.tf` defines the input variables for the module
- `outputs.tf` defines the values that are output from the module

The environment modules make use of the `iam` module located in `modules/`.

## Installation

You must have Terraform installed. See the instructions [here](https://www.terraform.io/downloads.html).

## Running the code

Navigate to the directory that corresponds with the environment you wish to work with.

1. For the first time, you'll have to run `terraform init`.
2. Running `terraform plan` will you show you any changes that would be made if you indeed apply them.
3. To implement your changes, run `terraform apply`
