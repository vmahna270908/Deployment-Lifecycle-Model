terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfstatestoragecloud"
    container_name       = "tfstate"
    key                  = "Dev.tfstate"
  }
}