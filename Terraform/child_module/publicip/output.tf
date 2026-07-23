output "pipsm_name" {
    value = {for k , v in azurerm_public_ip.pip: k => v.name}
}

output "pipsm_id" {
    value = {for k , v in azurerm_public_ip.pip: k => v.id}
}