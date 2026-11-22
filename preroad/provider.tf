terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.14.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-Adya"
    storage_account_name = "storage425"
    container_name       = "tfstate"
    key                  = "Adya.terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}