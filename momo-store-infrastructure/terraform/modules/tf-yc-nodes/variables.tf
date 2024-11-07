variable "name" {
    default = "momo-store-ng"
    description = "name"
}

variable "k8s_version" {
    default = "1.27"
    description = "version k8s" 
}

variable "platform_id" {
    default = "standard-v3"
    description = "platform_id"
}

variable "cores" {
  default = "2"
  description = "number of cores"
}

variable "core_fraction" {
  default = "50"
  description = "core_fraction"
}

variable "memory" {
  default = "2"
  description = "memory"
}

variable "boot_disk" {
    default =  "64"
}

variable "subnet_id" {
  default = ["e9bihkec0hqb3fvgksfd"]
  description = "subnet_id"
}

variable "nat" {
    default =  "true"
}

variable "cluster_id" {
    default = "cati3vlopimbeknq4cuv" // Исправить на data resource
    description = "Cluster id" 
}

variable "folder_id" {
  description = "Cloud folder id"
}

variable "cloud_id" {
  description = "Cloud id" 
}

variable "zone" {
    description = "zone"
}