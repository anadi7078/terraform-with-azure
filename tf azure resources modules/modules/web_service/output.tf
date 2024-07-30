output "service_plan_id" {
  description = "The ID of the App Service Plan"
  value       = azurerm_service_plan.asplancp.id
}

output "app_service_id" {
  description = "The ID of the App Service"
  value       = azurerm_app_service.mucocloudservice.id
}

output "app_service_default_hostname" {
  description = "The default hostname of the App Service"
  value       = azurerm_app_service.mucocloudservice.default_site_hostname
}

output "app_service_url" {
  description = "The URL of the App Service"
  value       = "https://${azurerm_app_service.mucocloudservice.default_site_hostname}"
}
