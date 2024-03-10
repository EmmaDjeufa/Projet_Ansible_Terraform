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
