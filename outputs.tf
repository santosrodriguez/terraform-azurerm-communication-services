output "acs_id" {
  value = azurerm_communication_service.acs.id
}

output "acs_name" {
  value = azurerm_communication_service.acs.name
}

output "acs_primary_connection_string" {
  value = nonsensitive(azurerm_communication_service.acs.primary_connection_string)
}

output "acs_primary_key" {
  value = nonsensitive(azurerm_communication_service.acs.primary_key)
}
