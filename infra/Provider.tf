# terraform version
# aws plugins
# random plugins
# template plugins

terraform {
  required_version = "1.10.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0" # Update this to a compatible version
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Using S3 backend
terraform {
  backend "s3" {
    bucket  = "112233-devops"
    key     = "2-tier-flask/dev-tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}