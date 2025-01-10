terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

resource "azurerm_resource_group" "task2" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "task2" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.task2.name
  location                 = azurerm_resource_group.task2.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "task2" {
  name                 = var.container_name
  storage_account_name = azurerm_storage_account.task2.name
}

resource "azurerm_storage_blob" "task2" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.task2.name
  storage_container_name = azurerm_storage_container.task2.name
  type                   = "Block"
  source                 = "terraform-task2-sb.zip"
}