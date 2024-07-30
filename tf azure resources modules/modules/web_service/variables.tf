variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the resources."
  type        = string
}

variable "service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
}

variable "acr_login_server" {
  description = "The login server of the Azure Container Registry."
  type        = string
}

variable "acr_repository" {
  description = "The repository name in the Azure Container Registry."
  type        = string
}

variable "acr_image_tag" {
  description = "The tag of the image in the Azure Container Registry."
  type        = string
}

variable "acr_admin_username" {
  description = "The admin username for ACR."
  type        = string
}

variable "acr_admin_password" {
  description = "The admin password for ACR."
  type        = string
}

variable "autoscale" {
  description = "Enable or disable autoscale."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}