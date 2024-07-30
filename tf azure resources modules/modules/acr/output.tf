output "acr_id" {
  description = "The ID of the Azure Container Registry"
  value       = azurerm_container_registry.acrcp1.id
}

output "acr_login_server" {
  description = "The login server of the Azure Container Registry"
  value       = azurerm_container_registry.acrcp1.login_server
}

output "acr_admin_username" {
  description = "The admin username of the Azure Container Registry"
  value       = azurerm_container_registry.acrcp1.admin_username
}

output "acr_admin_password" {
  description = "The admin password of the Azure Container Registry"
  value       = azurerm_container_registry.acrcp1.admin_password
  sensitive = true
}