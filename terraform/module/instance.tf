resource "esxi_guest" "lab14_m1" {
  guest_name = "${local.ressource_name}-${var.name}"
  
  clone_from_vm = "_template-debian"
  
  disk_store = "datastore1"
  boot_disk_size = var.boot_disk_size

  memsize = var.memsize
  numvcpus = var.numvcpus

  network_interfaces {
    virtual_network = "VLAN FORMATION 1"
  }

  guestinfo = {
    "metadata" = base64gzip(data.template_file.init.rendered)
    "metadata.encoding" = "gzip+base64"
    "userdata.encoding" = "gzip+base64"
  }

  
}