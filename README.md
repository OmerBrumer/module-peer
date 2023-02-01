<!-- BEGIN_TF_DOCS -->

# Two-way peering module

## Examples
```hcl
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
```

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_dest_id"></a> [dest\_id](#output\_dest\_id) | Id of destination vnet. |
| <a name="output_dest_name"></a> [dest\_name](#output\_dest\_name) | Name of destination vnet. |
| <a name="output_dest_object"></a> [dest\_object](#output\_dest\_object) | Object of destination vnet. |
| <a name="output_src_id"></a> [src\_id](#output\_src\_id) | Id of source vnet. |
| <a name="output_src_name"></a> [src\_name](#output\_src\_name) | Name of source vnet. |
| <a name="output_src_object"></a> [src\_object](#output\_src\_object) | Object of source vnet. |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vnet_dest_id"></a> [vnet\_dest\_id](#input\_vnet\_dest\_id) | (Required)ID of the dest vnet to peer. | `string` | n/a | yes |
| <a name="input_vnet_dest_name"></a> [vnet\_dest\_name](#input\_vnet\_dest\_name) | (Required)Name of destination vnet to peer. | `string` | n/a | yes |
| <a name="input_vnet_dest_resource_group_name"></a> [vnet\_dest\_resource\_group\_name](#input\_vnet\_dest\_resource\_group\_name) | (Required)Resource group name of the destination vnet. | `string` | n/a | yes |
| <a name="input_vnet_src_id"></a> [vnet\_src\_id](#input\_vnet\_src\_id) | (Required)ID of the source vnet to peer. | `string` | n/a | yes |
| <a name="input_vnet_src_name"></a> [vnet\_src\_name](#input\_vnet\_src\_name) | (Required)Name of source vnet to peer. | `string` | n/a | yes |
| <a name="input_vnet_src_resource_group_name"></a> [vnet\_src\_resource\_group\_name](#input\_vnet\_src\_resource\_group\_name) | (Required)Resource group name of the source vnet. | `string` | n/a | yes |
| <a name="input_allow_forwarded_dest_traffic"></a> [allow\_forwarded\_dest\_traffic](#input\_allow\_forwarded\_dest\_traffic) | (Optional)allow\_forwarded\_traffic for the dest vnet to peer. Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_forwarded_traffic. | `bool` | `false` | no |
| <a name="input_allow_forwarded_src_traffic"></a> [allow\_forwarded\_src\_traffic](#input\_allow\_forwarded\_src\_traffic) | (Optional)allow\_forwarded\_traffic for the src vnet to peer. Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_forwarded_traffic. | `bool` | `false` | no |
| <a name="input_allow_gateway_dest_transit"></a> [allow\_gateway\_dest\_transit](#input\_allow\_gateway\_dest\_transit) | (Optional)allow\_gateway\_transit for the dest vnet to peer. Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_gateway_transit. | `bool` | `true` | no |
| <a name="input_allow_gateway_src_transit"></a> [allow\_gateway\_src\_transit](#input\_allow\_gateway\_src\_transit) | (Optional)allow\_gateway\_transit for the src vnet to peer. Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_gateway_transit. | `bool` | `true` | no |
| <a name="input_allow_virtual_dest_network_access"></a> [allow\_virtual\_dest\_network\_access](#input\_allow\_virtual\_dest\_network\_access) | (Optional)allow\_virtual\_network\_access for the dest vnet to peer. Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_virtual_network_access. | `bool` | `false` | no |
| <a name="input_allow_virtual_src_network_access"></a> [allow\_virtual\_src\_network\_access](#input\_allow\_virtual\_src\_network\_access) | (Optional)allow\_virtual\_network\_access for the src vnet to peer. Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_virtual_network_access. | `bool` | `false` | no |
| <a name="input_use_remote_dest_gateway"></a> [use\_remote\_dest\_gateway](#input\_use\_remote\_dest\_gateway) | (Optional)use\_remote\_gateway for the dest vnet to peer. Controls if remote gateways can be used on the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#use_remote_gateways. | `bool` | `false` | no |
| <a name="input_use_remote_src_gateway"></a> [use\_remote\_src\_gateway](#input\_use\_remote\_src\_gateway) | (Optional)use\_remote\_gateway for the src vnet to peer. Controls if remote gateways can be used on the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#use_remote_gateways. | `bool` | `false` | no |



# Authors
Originally created by Omer Brumer
<!-- END_TF_DOCS -->