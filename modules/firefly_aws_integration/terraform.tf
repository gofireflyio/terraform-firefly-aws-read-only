terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }

    terracurl = {
      version = "0.1.0"
      source= "devops-rob/terracurl"
    }
  }
}