resource "yandex_kubernetes_node_group" "momo-store-ng" {
  name        = var.name
  description = "momo-store node group"
  cluster_id  = var.cluster_id
  version     = var.k8s_version
  instance_template {
    name = "momo-store-{instance.short_id}-{instance_group.id}"
    platform_id = var.platform_id
    resources {
      cores         = var.cores
      core_fraction = var.core_fraction
      memory        = var.memory
    }
    boot_disk {
      size = var.boot_disk
      type = "network-ssd"
    }
    network_acceleration_type = "standard"
    network_interface {
      subnet_ids         = var.subnet_id
      nat                = var.nat
    }
    scheduling_policy {
      preemptible = true
    }
  }
  scale_policy {
    fixed_scale {
      size = 1
    }
  }
  deploy_policy {
    max_expansion   = 3
    max_unavailable = 1
  }
  maintenance_policy {
    auto_upgrade = true
    auto_repair  = true
    maintenance_window {
      start_time = "22:00"
      duration   = "10h"
    }
  }
  node_labels = {
    node-label1 = "node-value1"
  }
  node_taints = ["taint1=taint-value1:NoSchedule"]
  labels = {
    "template-label1" = "momo-store"
  }
  allowed_unsafe_sysctls = ["kernel.msg*", "net.core.somaxconn"]
}