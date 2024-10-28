module "tables" {
  source                = "./tf-table"
  resource_group_name   = var.resource_group_name  
  location              = var.location              
  storage_account_name   = var.storage_account_name
  tier                   = var.tier
  types                  = var.types  
  tables                = var.tables               
}

variable "resource_group_name" {
}

variable "location" {
}

variable "storage_account_name" {
}

variable "tables" {
}

variable "tier" {
}

variable "types" {
}