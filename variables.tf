# SRC PEER CONF
variable "vnet_src_id" {
  description = "(Required)ID of the source vnet to peer."
  type        = string
}

variable "vnet_src_name" {
  description = "(Required)Name of source vnet to peer."
  type        = string
}

variable "vnet_dest_name" {
  description = "(Required)Name of destination vnet to peer."
  type        = string
}

variable "vnet_src_resource_group_name" {
  description = "(Required)Resource group name of the source vnet."
  type        = string
}

variable "vnet_dest_resource_group_name" {
  description = "(Required)Resource group name of the destination vnet."
  type        = string
}

variable "allow_virtual_src_network_access" {
  description = "(Optional)allow_virtual_network_access for the src vnet to peer. Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_virtual_network_access."
  type        = bool
  default     = false
}

variable "allow_forwarded_src_traffic" {
  description = "(Optional)allow_forwarded_traffic for the src vnet to peer. Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_forwarded_traffic."
  type        = bool
  default     = false
}

variable "allow_gateway_src_transit" {
  description = "(Optional)allow_gateway_transit for the src vnet to peer. Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_gateway_transit."
  type        = bool
  default     = true
}

variable "use_remote_src_gateway" {
  description = "(Optional)use_remote_gateway for the src vnet to peer. Controls if remote gateways can be used on the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#use_remote_gateways."
  type        = bool
  default     = false
}

# DEST PEER CONF
variable "vnet_dest_id" {
  description = "(Required)ID of the dest vnet to peer."
  type        = string
}

variable "allow_virtual_dest_network_access" {
  description = "(Optional)allow_virtual_network_access for the dest vnet to peer. Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_virtual_network_access."
  type        = bool
  default     = false
}

variable "allow_forwarded_dest_traffic" {
  description = "(Optional)allow_forwarded_traffic for the dest vnet to peer. Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to false. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_forwarded_traffic."
  type        = bool
  default     = false
}

variable "allow_gateway_dest_transit" {
  description = "(Optional)allow_gateway_transit for the dest vnet to peer. Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#allow_gateway_transit."
  type        = bool
  default     = true
}

variable "use_remote_dest_gateway" {
  description = "(Optional)use_remote_gateway for the dest vnet to peer. Controls if remote gateways can be used on the local virtual network. git::https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#use_remote_gateways."
  type        = bool
  default     = false
}