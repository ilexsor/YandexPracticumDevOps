terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
#   backend "s3" {
#     endpoints = {
#         s3 = "https://storage.yandexcloud.net"
#     }   
#     bucket     = "terraform-state-std-ext-004-43-momo"
#     region     = "ru-central1"
#     key        = "terraform.tfstate"

#     skip_region_validation      = true
#     skip_credentials_validation = true
#     skip_requesting_account_id  = true
#     skip_s3_checksum            = true
#   }

}

provider "yandex" {
  token     = "**********" # Set OAuth or IAM token
  cloud_id  = "b1glf58ococi9sqg1pp3" # Set your cloud ID
  folder_id = "b1gdumdvlook32m1gvpi" # Set your cloud folder ID
  zone = "ru-central1-a"
}

