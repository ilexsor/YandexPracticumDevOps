resource "yandex_iam_service_account" "momo-store-service-account" {
 name        = var.service_acc
 description = "momo-store-service-acc"
}

resource "yandex_iam_service_account_key" "sa-auth-key" {
  service_account_id = yandex_iam_service_account.momo-store-service-account.id
  description        = "key for service account"
  key_algorithm      = "RSA_4096"
}

resource "yandex_resourcemanager_folder_iam_member" "editor" {
 # Сервисному аккаунту назначается роль "editor".
 folder_id = var.folder_id
 role      = "editor"
 member    = "serviceAccount:${yandex_iam_service_account.momo-store-service-account.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "images-puller" {
 # Сервисному аккаунту назначается роль "container-registry.images.puller".
 folder_id = var.folder_id
 role      = "container-registry.images.puller"
 member    = "serviceAccount:${yandex_iam_service_account.momo-store-service-account.id}"
}

resource "yandex_kubernetes_cluster" "momo-store-cluster" {
 network_id = var.network_id
 master {
   zonal {
     zone      = var.zone
     subnet_id = var.subnet_id
   }
public_ip = true
 }
 service_account_id      = yandex_iam_service_account.momo-store-service-account.id
 node_service_account_id = yandex_iam_service_account.momo-store-service-account.id
   depends_on = [
     yandex_resourcemanager_folder_iam_member.editor,
     yandex_resourcemanager_folder_iam_member.images-puller
   ]
}