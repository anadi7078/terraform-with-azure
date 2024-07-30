resource "azurerm_container_registry" "acrcp1" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = var.acr_admin_enabled

  tags = var.tags
}