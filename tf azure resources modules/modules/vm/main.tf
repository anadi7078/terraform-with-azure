resource "azurerm_linux_virtual_machine" "VM_cp" {
  name                = replace(var.vm_name, "/[^a-zA-Z0-9_-]/g", "_")
  location            = var.location
  resource_group_name = var.resource_group_name
  network_interface_ids = var.network_interface_ids
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  computer_name       = var.computer_name
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  custom_data = filebase64("${path.module}/cloud-init.yaml")

  tags = var.tags
}
output "name" {value = azurerm_linux_virtual_machine.VM_cp.name}
