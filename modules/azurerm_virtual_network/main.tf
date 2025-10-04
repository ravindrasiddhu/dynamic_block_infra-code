resource "azurerm_virtual_network" "virtual_network" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

 dynamic "subnet" {
  for_each = var.subnets
  content {
   name             = subnet.key
    address_prefixes = subnet.value
  }
  }

}
