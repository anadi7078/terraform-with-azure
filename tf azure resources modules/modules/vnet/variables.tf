variable "name" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "location" {
  description = "The location of the virtual network"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "dns_servers" {
  description = "The DNS servers of the virtual network"
  type        = list(string)
  default     = []
}
variable "subnets" {
  description = "The subnets of the virtual network"
  type = list(object({
    name           = string
    address_prefix = string
  }))
}
variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}