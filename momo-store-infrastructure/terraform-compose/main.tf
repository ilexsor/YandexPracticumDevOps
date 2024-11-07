module "vm" {
  source = "./modules/tf-yc-vm"

  cloud_id = var.cloud_id
  folder_id = var.folder_id
  zone = var.zone
}
