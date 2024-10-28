variable "resource_group_name" {}

variable "location" {}

variable "storage_account_name" {}

variable "tier" {}

variable "types" {}

variable "tables" {
  type = list(object({
    name        = string
  }))
}



