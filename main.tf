##Creating the Resource Group
resource "azurerm_resource_group" "AZ-RG" {
  name = var.RG-Name
  location = var.RG-Location
}

##Creating a Virtual Network

resource "azurerm_virtual_network" "AZ-VN" {
  name = var.VN-Name
  resource_group_name = azurerm_resource_group.AZ-RG.name
  location = azurerm_resource_group.AZ-RG.location
  address_space = var.VN-CIDR 
}
