resource "azurerm_subnet" "sub12" {
    for_each = var.subnets
  name = each.value.name
  resource_group_name = each.value.resource
  virtual_network_name = each.value.virtual
  address_prefixes = each.value.address
}