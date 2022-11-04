variable "rgname" {
 type        = string
 description = "The name of resource group"
}

variable "location" {
 type        = string
 description = "Location of resource group"
}

variable "Storage_account_name" {
 type        = string
 description = "Storage account name"
}

variable "storage_account_location" {
 type        = string
 description = "storage account location"
}

variable "Storage_Resource_group_name" {
 type        = string
 description = "storage resource group name"
}

variable "Account_tier" {
 type        = string
 description = "Account tier"
}

variable "Account_replication_type" {
 type        = string
 description = "Account replication type"
}