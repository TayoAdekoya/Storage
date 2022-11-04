provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "Resource_Group" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_storage_account" "Storage_Account" {
  name                         = var.storage_account_name
  location                     = var.storage_account_location
  resource_group_name          = var.storage_resource_group_name
  account_tier                 = var.account_tier
  account_replication_type     = var.account_replication_type
}