resource "azurerm_kubernetes_cluster" "aks_service" {
  name                = var.aks_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

identity {
    type = "SystemAssigned"
  }
  
}