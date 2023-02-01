output "src_id" {
  description = "Id of source vnet."
  value       = azurerm_virtual_network_peering.peering_src.id
}

output "src_name" {
  description = "Name of source vnet."
  value       = azurerm_virtual_network_peering.peering_src.name
}

output "src_object" {
  description = "Object of source vnet."
  value       = azurerm_virtual_network_peering.peering_src
}

output "dest_id" {
  description = "Id of destination vnet."
  value       = azurerm_virtual_network_peering.peering_dest.id
}

output "dest_name" {
  description = "Name of destination vnet."
  value       = azurerm_virtual_network_peering.peering_dest.name
}

output "dest_object" {
  description = "Object of destination vnet."
  value       = azurerm_virtual_network_peering.peering_dest
}

