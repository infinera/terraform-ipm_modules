terraform {
  required_providers {
    ipm = {
      source = "infinera.com/poc/ipm"
    }
  }
  experiments = [module_variable_optional_attrs]
}

provider "ipm" {
  username = var.ipm_user
  password = var.ipm_password
  host     = var.ipm_host
}

module "hosts" {
  source   = "git::https://github.com/infinera/terraform-ipm_modules.git//host-management-service/workflows/hosts"

  hosts = var.hosts
  profile_path = var.ipm_profile_path
}

output "hosts" {
  value = module.host.hosts
}


