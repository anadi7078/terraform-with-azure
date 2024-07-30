output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_linux_virtual_machine.VM_cp.id
}
output "vm_name" {
  value = azurerm_linux_virtual_machine.VM_cp.name
}