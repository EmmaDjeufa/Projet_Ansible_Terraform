data "template_file" "init" {
  template = file("./templates/inventory.tpl.yml")

  vars = {
    name = local.ressource_name
    ip_address = var.ip_address
  }
}

