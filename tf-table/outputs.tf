output "storage_table_names" {
  value = [for table in azurerm_storage_table.tabela : table.name]
}


output "partition_keys" {
  value = { for table in var.tables : table.name => lookup(table, "partition_key", null) }
}
