provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "vnet" {
  source              = "./modules/vnet"
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  dns_servers         = var.vnet_dns_servers
  subnets             = var.subnets
  tags                = var.tags
}

module "vm" {
  source              = "./modules/vm"
  vm_name             = replace(var.vm_name, "/[^a-zA-Z0-9_-]/g", "_")
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  network_interface_ids = [module.vnet.nic_id]
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  computer_name = var.computer_name

  tags                = var.tags
}
module "acr" {
  source              = "./modules/acr"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  acr_name            = var.acr_name
  acr_admin_enabled   = var.acr_admin_enabled
  tags                = var.tags
}
module "web_service" {
  source                = "./modules/web_service"
  resource_group_name   = module.resource_group.name
  location              = module.resource_group.location
  service_plan_name     = var.service_plan_name 
  app_service_name      = var.app_service_name
  acr_login_server      = module.acr.acr_login_server
  acr_repository        = var.acr_repository
  acr_image_tag         = var.acr_image_tag
  acr_admin_username    = var.acr_admin_username
  acr_admin_password    = var.acr_admin_password
  autoscale             = var.autoscale
  tags                  = var.tags
}