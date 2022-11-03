provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "Resource_Group" {
  name     = var.rgname
  location = var.location
}