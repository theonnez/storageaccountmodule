output "resource_group_name" {
  description = "Nome do grupo de recursos do Azure criado"
  value       = azurerm_resource_group.homelab.name
}

output "resource_group_location" {
  description = "Localização do grupo de recursos do Azure"
  value       = azurerm_resource_group.homelab.location
}

output "storage_account_name" {
  description = "Nome da conta de armazenamento do Azure criada"
  value       = azurerm_storage_account.example.name
}

output "storage_account_primary_blob_endpoint" {
  description = "Endpoint primário do Blob Storage da conta de armazenamento"
  value       = azurerm_storage_account.example.primary_blob_endpoint
}
