terraform {
  required_providers {
    linode = {
      source = "terraform-providers/linode"
    }
  }

  backend "s3" {
    bucket = "kubeform-remote-backend"
    key = "kubeform/terraform.tfstate"
    region = "us-east-2"
    access_key = ""
    secret_key = ""
  }
}

provider "linode" {
  token = var.token
}

resource "linode_instance" "kubeform-instance" {
  region = "us-east"
  image = "linode/ubuntu18.04"
  label = "kubeform-demo"
  root_pass = "TestPassWord@123456789"
}

variable "token" {}
