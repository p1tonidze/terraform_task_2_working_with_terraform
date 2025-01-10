variable "resource_group_name" {
  type    = string
  default = "task2rg"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "task2sa"
}

variable "container_name" {
  type    = string
  default = "task2sc"
}

variable "blob_name" {
  type    = string
  default = "task2sb"
}