resource "azurerm_mssql_server" "mssql_server" {
  for_each = var.mssql_server
  name                         = each.value.mssql_server_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
}