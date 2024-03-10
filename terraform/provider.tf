provider "esxi" {
  esxi_hostname = "vms-formation.adlere.fr"
  esxi_hostport = "22"
  esxi_username = "root"
  esxi_password = sensitive("dry34aqKUJmK")
}

terraform {
  required_providers {
    esxi = {
      source = "josenk/esxi"
      version = "1.10.3"
    }
    template = {
      source = "hashicorp/template"
      version = "2.2.0"
    }
  }
}