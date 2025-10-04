variable "aks_service_name" {
  description = "The name of the AKS service"
  type        = string
}

variable "location" {
  description = "The Azure region where the AKS service will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS service"
  type        = string
}
