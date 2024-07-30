output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.resource_group.name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = module.resource_group.location
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = module.vnet.name
}

output "subnet_names" {
  description = "The names of the subnets in the virtual network"
  value       = [for subnet in module.vnet.subnets : subnet.name]
}

output "vm_name" {
  description = "The name of the virtual machine"
  value       = module.vm.vm_name
}

output "acr_id" {
  description = "The ID of the Azure Container Registry"
  value       = module.acr.acr_id
}

output "acr_login_server" {
  description = "The login server of the Azure Container Registry"
  value       = module.acr.acr_login_server
}

output "acr_admin_username" {
  description = "The admin username of the Azure Container Registry"
  value       = module.acr.acr_admin_username
}

output "acr_admin_password" {
  description = "The admin password of the Azure Container Registry"
  value       = module.acr.acr_admin_password
  sensitive = true
}

output "app_service_plan_id" {
  description = "The ID of the App Service Plan."
  value       = module.web_service.service_plan_id
}

output "app_service_id" {
  description = "The ID of the App Service."
  value       = module.web_service.app_service_id
}

output "app_service_default_hostname" {
  description = "The default hostname of the App Service."
  value       = module.web_service.app_service_default_hostname
}