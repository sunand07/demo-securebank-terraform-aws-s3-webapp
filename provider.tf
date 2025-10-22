terraform {
  required_providers {
    fakewebservices = {
      source  = "hashicorp/fakewebservices" # Use a known mock/fake provider
      version = ">= 0.1.0"
    }
  }
}

provider "fakewebservices" {}

resource "fakewebservices_vpc" "demo_vpc" {
  name       = "Demo-VPC"
  cidr_block = "10.0.0.0/16"
  tags = {
    Environment = "Demo"
  }
}
# Add other fake resources like fakewebservices_instance, fakewebservices_database, etc.
