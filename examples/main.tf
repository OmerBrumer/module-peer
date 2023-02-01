module "peer_workspoke" {
  source = "../../peer"

  vnet_src_resource_group_name  = "brumer-final-terraform-hub-rg"
  vnet_dest_resource_group_name = "brumer-final-terraform-workspoke-rg"

  vnet_src_name  = "brumer-final-terraform-hub-vnet"
  vnet_dest_name = "brumer-final-terraform-workspoke-vnet"

  vnet_src_id  = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-hub-rg/providers/Microsoft.Network/virtualNetworks/brumer-final-terraform-hub-vnet"
  vnet_dest_id = "/subscriptions/d94fe338-52d8-4a44-acd4-4f8301adf2cf/resourceGroups/brumer-final-terraform-workspoke-rg/providers/Microsoft.Network/virtualNetworks/brumer-final-terraform-workspoke-vnet"

  peer_allow_forwarded_src_traffic  = true
  peer_allow_forwarded_dest_traffic = true

  peer_allow_virtual_src_network_access  = true
  peer_allow_virtual_dest_network_access = true

  allow_gateway_src_transit  = true
  allow_gateway_dest_transit = false

  use_remote_src_gateway  = false
  use_remote_dest_gateway = true
}