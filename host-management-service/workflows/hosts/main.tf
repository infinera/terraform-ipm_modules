terraform {
  required_providers {
    ipm = {
      source = "infinera.com/poc/ipm"
    }
  }

}


module "profiles" {
  source = "../../profiles"

  system_data_path = var.system_data_path
  user_profile     = var.user_profile
}

module "hosts" {
  source = "../../tasks/hosts"

  hosts = var.hosts
}

output "hosts" {
  value = module.host.hosts
}


