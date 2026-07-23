resource "azurerm_network_interface" "nic" {
    for_each = var.nics
    name = each.value.name
  resource_group_name = each.value.resource
  location = each.value.location 

  ip_configuration {
    name = "ipconfiguration1"
    subnet_id = var.subnets[each.value.subnet_id]
    public_ip_address_id = var.pips[each.value.public_id]
    private_ip_address_allocation = each.value.private
  }
  
}
