terraform {
  required_providers {
    ipm = {
      source = "infinera.com/poc/ipm"
    }

  }
}

provider "ipm" {
  username = var.ipm_user
  password = var.ipm_password
  host     = var.ipm_host
}

data "ipm_networks" "networks" {
  //id = "5ff66884-bf1b-4e77-8340-ec9d739c7ca8"
}

output "networks" {
  value = data.ipm_networks.networks
}


