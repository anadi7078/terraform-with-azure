variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default = "acrcp1"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "acr_admin_enabled" {
  description = "Specifies whether the admin user is enabled"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
variable "acr_admin_password" {
  description = "The name of the Azure Container Registry"
  type        = string
  default = "yYCoC09BpcFarkaVHki0V6Xqp5VmD6feVl6maq9O1o+ACRAcMzIh"
}