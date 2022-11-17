resource "azurerm_resource_group" "sairg" {
  name     = var.resource_group_name.name
  location = var.resource_group_name.location
}