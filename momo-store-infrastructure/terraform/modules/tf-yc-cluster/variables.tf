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

variable "service_acc" {
  default = "momo-store-service-acc"
  description = "momo-store-service-acc"
}