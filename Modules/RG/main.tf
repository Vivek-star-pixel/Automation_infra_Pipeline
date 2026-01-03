resource "azurerm_resource_group" "rg_group" {
  for_each = var.rg_group
  name     = each.value.rg_name
  location = each.value.location
  
}
