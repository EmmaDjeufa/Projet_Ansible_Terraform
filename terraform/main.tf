module "lab14" {
  for_each = tomap(var.vm_map)

  name = each.value.name

  source = "./module"

  ip_address = each.value.ip

  memsize = 1024
  numvcpus = 1
  boot_disk_size = 25
}

variable "vm_map" {
  type = map(object({
    name = string
    ip = string
  }))

  description = "map of the vm infos"

  default = {
    "vm1" = {
      name = "app"
      ip = "10.10.10.140"
    }
    "vm2" = {
      name = "bdd"
      ip = "10.10.10.141"
    }
  }
}

output "ip" {
  value = [for i in module.lab14 : i.ip_address]
}