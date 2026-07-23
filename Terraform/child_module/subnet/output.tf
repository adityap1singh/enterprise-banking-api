output "subnets_name" {
    value = {for k , v in azurerm_subnet.sub12: k => v.name}
}

output "subnets_id" {
    value = {for k , v in azurerm_subnet.sub12: k => v.id}
}