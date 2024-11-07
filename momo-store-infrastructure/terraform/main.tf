module "cluster" {
  source = "./modules/tf-yc-cluster"

  cloud_id = var.cloud_id
  folder_id = var.folder_id
  zone = var.zone
}

module "nodes" {
  source = "./modules/tf-yc-nodes"

  cloud_id = var.cloud_id
  folder_id = var.folder_id
  zone = var.zone
}
