variable "ip_address" {
  type = string
  description = "ip address"
}

variable "numvcpus" {
  type = number
  description = "number of cpu"
}

variable "memsize" {
  type = number
  description = "memory size"
}

variable "boot_disk_size" {
  type = number
  description = "size of the boot disk"
}

variable "name" {
  type = string
  description = "specific name of vm"
}