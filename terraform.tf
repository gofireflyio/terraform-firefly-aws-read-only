terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }

    httpclient = {
          version = "0.0.3"
          source  = "dmachard/http-client"
        }
  }
}