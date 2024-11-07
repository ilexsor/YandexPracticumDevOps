output "cluster_id" {
  value = yandex_kubernetes_cluster.momo-store-cluster.id
}

output "public_ip" {
  value = yandex_kubernetes_cluster.momo-store-cluster.master[0].public_ip
}