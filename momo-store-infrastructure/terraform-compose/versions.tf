terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "t1.9euelZrPj5SdlsnGkI_Gm8qMzZGYnu3rnpWazJeYl5GWncqXnZzJx42RnZbl9Pclah9L-e8bWWCH3fT3ZRgdS_nvG1lgh83n9euelZqLipHIzsySksjJismZy46Siu_8xeuelZqLipHIzsySksjJismZy46Sig.C6vzSrxBYJ4uUbowM2C6G9_qdEHrcQvowPaWCbkoQ-2ljSDVFVRSwkKUrYpeV1HSVu7DHuiGM1VYAc-S2lorDg" # Set OAuth or IAM token
  cloud_id  = "b1glf58ococi9sqg1pp3" # Set your cloud ID
  folder_id = "b1gdumdvlook32m1gvpi" # Set your cloud folder ID
  zone = "ru-central1-a"
}

