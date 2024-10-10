terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "testabc12332"
    container_name       = "demo"
    key                  = "dev.terraform.tfstate"
    access_key           = "8xc40u8Lim5jhhHDxp+2+scYRWSnvHth+kPH2B9EEy46CY0+Vy5yoaoekDiFnhNeycZfQxGGBKFb+ASt0jY/Vg=="
  }
}

provider "azurerm" {
  features {}
}