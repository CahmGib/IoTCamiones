terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.27.0"
    }

  }
#  backend "s3" {
 # }

}

provider "aws" {

  region = var.region
  default_tags {
    tags = {
      environment = var.environment
      ManageBy    = "terraform"
      project     = var.project
    }
  }
  endpoints {
    sts = "https://sts.${var.region}.amazonaws.com"
  }
}
