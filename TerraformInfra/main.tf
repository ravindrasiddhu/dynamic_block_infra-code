module "azurerm_resource_group" {
  source   = "../modules/azurerm_resource_group"
  rg_name  = "rg_ravin"
  location = "centralindia"
}





module "azurerm_virtual_network" {
  depends_on          = [module.azurerm_resource_group]
  source              = "../modules/azurerm_virtual_network"
  vnet_name           = "vnet_ravin"
  location            = "centralindia"
  resource_group_name = "rg_ravin"
  address_space       = ["10.0.0.0/16"]

  subnets = {
    todo-app-frontend-subnet = ["10.0.1.0/24"]
    todo-app-backend-subnet  = ["10.0.2.0/24"]
    todo-app-database-subnet = ["10.0.3.0/24"]
  }

}

module "azurerm_aks_service" {
  depends_on          = [module.azurerm_virtual_network]
  source              = "../modules/azurerm_aks_service"
  aks_service_name    = "aks-service"
  location            = "centralindia"
  resource_group_name = "rg_ravin"
}