#Creating the Resource Group
resource "azurerm_resource_group" "AZ-RG" {
  name = var.RG-Name
  location = var.RG-Location
}

#Creating a Virtual Network

resource "azurerm_virtual_network" "AZ-VN" {
  name = var.VN-Name
  resource_group_name = azurerm_resource_group.AZ-RG.name
  location = azurerm_resource_group.AZ-RG.location
  address_space = var.VN-CIDR 
}

resource "azurerm_subnet" "AZ-SN1" {
  name                 = var.SN1-Name
  resource_group_name  = azurerm_resource_group.AZ-RG.name
  virtual_network_name = azurerm_virtual_network.AZ-VN.name
  address_prefixes     = var.SN1-CIDR
}
/*
resource "azurerm_network_interface" "VM1-NIC1" {
  name                = var.VM1-NIC1
  location            = azurerm_resource_group.AZ-RG.location
  resource_group_name = azurerm_resource_group.AZ-RG.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.AZ-SN1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "VM1" {
  name                = var.VM1-Name
  resource_group_name = azurerm_resource_group.AZ-RG.name
  location            = azurerm_resource_group.AZ-RG.location
  size                = "Standard_F2"
  admin_username      = var.VM1-username
  admin_password      = var.VM1-password
  network_interface_ids = [
    azurerm_network_interface.VM1-NIC1.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
*/