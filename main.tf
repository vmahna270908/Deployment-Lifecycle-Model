#Create the Resource Group
resource "azurerm_resource_group" "AZ-RG" {
  name = var.RG-Name
  location = var.RG-Location
}

