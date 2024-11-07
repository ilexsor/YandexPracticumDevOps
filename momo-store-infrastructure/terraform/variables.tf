variable "zone" {
  default = "ru-central1-a"
  type = string
  description = "Instance availability zone"
  validation {
    condition = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
}

variable "folder_id" {
  description = "Cloud folder id"
  default = "b1gdumdvlook32m1gvpi"
}

variable "cloud_id" {
  description = "Cloud id"
  default = "b1glf58ococi9sqg1pp3"
  
}
