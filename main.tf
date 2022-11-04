provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = "storagerg1"
  location = "West us"
}

resource "azurerm_storage_account" "Storage_Account" {
  name                         = "storagea1"
  location                     = azurerm_resource_group.resource_group.location
  resource_group_name          = azurerm_resource_group.resource_group.name
  account_tier                 = "Standard"
  account_replication_type     = "GRS"
}