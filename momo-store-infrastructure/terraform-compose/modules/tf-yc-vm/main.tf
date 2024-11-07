resource "yandex_compute_disk" "boot-disk" {
  name     = var.disk_name
  type     = var.disk_type
  zone     = var.zone
  size     = var.disk-size
  image_id = var.image_id
}

resource "yandex_compute_instance" "momo-vm" {
  name                      = "momo-vm"
  allow_stopping_for_update = true
  platform_id               = "standard-v3"
  zone                      = var.zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk.id
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "admin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDXsrupjmxdsqhv7T9Daa/H/kxcveF21ME/W5h5pkoQ5kQ1b8Y8hA3QzgdU6LdPHBb+GO2o+6vxBBOO6oqs6MnlbpEuTZjRvwShH1Vn5c5t8iKXCDh65XSEguDF/ucOP/XsoLmsRnxVvF/26tvs/73nFvwEG0YBn3/DJZRZtkWHOmfPFe3PihhKbBLO5Bflx7mjIrGmUkM9hueBvDlwODqHnLXUB62KMWO74E7YMi++WHEmCIT6AMzB0/IHVgTbseOH0h/QhD8dnyu8Y5f1F6iEA4vmoFa3FSTyYtsmLyRkPLAlmDIcFH1aLQRb8bVllcaC9J0S+zxDnlKa/n5/VSVB1dHAS7LxnOQ/YZ4cQ/tbbXXgIHXypGK6SINAKdjDPfxA8KBZhLqGbHKPha03nMXW22b9WP/DvpHCHpqMAyUlMavu3F2HdYOzvEnPejedgrW8bVfKre5FWBcJ6FJzJSYL2eW/ogaAVER/2eDg/bHM/hBEcTo84obUQguGboTixFE= ilexsor@ilexsor-VirtualBox"
  }
}
