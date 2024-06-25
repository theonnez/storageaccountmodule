variable "location" {
  description = "Localização dos recursos Azure"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Tipo de tier da conta de armazenamento do Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação da conta de armazenamento do Azure"
  type        = string
  default     = "GRS"
}

variable "environment" {
  description = "Ambiente onde os recursos serão provisionados"
  type        = string
  default     = "PROD"
}

variable "resource_group_name" {
  description = "Nome do grupo de recursos do Azure"
  type        = string
  default     = "homelab01_group"
}

variable "storage_account_name" {
  description = "Nome da conta de armazenamento do Azure"
  type        = string
  default     = "storageaccounthomelab01"
}