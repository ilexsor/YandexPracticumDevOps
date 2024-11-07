terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "t1.9euelZrHxs6MkpWTlZCexpCcyozIjO3rnpWazJeYl5GWncqXnZzJx42RnZbl8_dbBkVL-e8TGDBr_N3z9xs1Qkv57xMYMGv8zef1656VmsjMmpCNlcbNmcaWnZLHkpGX7_zF656VmsjMmpCNlcbNmcaWnZLHkpGX.jVoOZnmDL9h_Ukz_pYkSiktdJ-0PpjTKqBj4UZXQYbBGtj20iQ9Mb-n97j6TMojQMV_UPAMuYX8Z6V13LBQWBQ" # Set OAuth or IAM token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone = var.zone
}
