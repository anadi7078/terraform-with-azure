output "name" {
  value = azurerm_virtual_network.VNET_cp.name
}

output "subnets" {
  value = [for subnet in azurerm_subnet.subnets : {
    name = subnet.name
  }]
}

output "nic_id" {
  value = azurerm_network_interface.NIC_cp.id
}