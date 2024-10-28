resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resourcegroup.name
  location                 = azurerm_resource_group.resourcegroup.location
  account_tier            = var.tier
  account_replication_type = var.types
}

resource "azurerm_storage_table" "tabela" {
  for_each             = { for table in var.tables : table.name => table }
	name                 = each.value["name"]

  storage_account_name = azurerm_storage_account.storageaccount.name
}
