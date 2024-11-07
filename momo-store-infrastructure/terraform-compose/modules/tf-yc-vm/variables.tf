variable "folder_id" {
  description = "Cloud folder id"
}

variable "cloud_id" {
  description = "Cloud id" 
}

variable "zone" {
    description = "zone"
}

variable "network_id" {
  default = "enp1upjoc9tg9cp5sbd1"
  description = "network_id"
}

variable "subnet_id" {
  default = "e9bihkec0hqb3fvgksfd"
  description = "subnet_id"
}

variable "disk_name" {
  default = "mydisk"
  description = "disk name"
}

variable "disk_type" {
  default = "network-hdd"
  description = "disk type"
}

variable "disk-size" {
  default = "5"
  description = "disk size"
}

variable "image_id" {
  default = "fd8t24r7o6m7fdvlp47l"
  description = "image"
  
}