variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "location" {
  description = "The Azure Region where the virtual network should exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the virtual network should exist."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnets" {
  description = "A map of subnets to create in the virtual network. The key is the name of the subnet and the value is a list of address prefixes."
  type        = map(list(string))
  default     = {}
}
