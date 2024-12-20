terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfstatestoragecloud"
    container_name       = "tfstate"
    key                  = "staging.tfstate"
  }
}

provider "azurerm" {
  features{}
}