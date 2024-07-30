variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "RG_cp"
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  default     = "West Europe"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "VNET_cp"
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "vnet_dns_servers" {
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
  default = [
    {
      name           = "subnet1"
      address_prefix = "10.0.1.0/24"
      security_group = "NSG_cp"
    },
    {
      name           = "subnet2"
      address_prefix = "10.0.2.0/24"
      security_group = "NSG_cp"
    }
  ]
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {
    environment = "Production"
  }
}
variable "security_group_name" {
  description = "The name of the network security group"
  type        = string
  default     = "NSG_cp"
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default     = "VM_cp"
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
  default     = "********"
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  type        = string
  sensitive   = true
  default     = "*******"
}
variable "computer_name" { 
  description = "The name of the computer"
  type = string
  default = "computercp" 
  }

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default = "acrcp1"
}

variable "acr_admin_enabled" {
  description = "Specifies whether the admin user is enabled for the Azure Container Registry"
  type        = bool
  default     = true
}  
variable "acr_admin_password" {
  description = "The name of the Azure Container Registry"
  type        = string
  default = "***************************"
}
variable "service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
  default = "asplancp"
}
variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
  default = "cloudservice"
}
variable "acr_repository" {
  description = "The repository name in the Azure Container Registry."
  type        = string
  default = "cloudproject"
}

variable "acr_image_tag" {
  description = "The tag of the image in the Azure Container Registry."
  type        = string
  default = "latest"
}
variable "autoscale" {
  description = "Enable or disable autoscale."
  type        = bool
  default     = true
}
variable "acr_admin_username" {
  description = "The admin username for ACR."
  type        = string
  default = "acrcp1"
}

variable "acr_login_server" {
  description = "The login server of the Azure Container Registry."
  type        = string
  default = "acrcp1.azurecr.io"
}