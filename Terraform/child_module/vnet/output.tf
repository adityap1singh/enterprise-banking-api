output "vn_name" {
    value = {for k , v in azurerm_virtual_network.vnet: k => v.name}
}

output "vn_id" {
    value = {for k , v in azurerm_virtual_network.vnet: k => v.id}
}