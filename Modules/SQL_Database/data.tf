data "azurerm_mssql_server" "data_sqldatabase" {
    for_each = var.sql_database
  name                = each.value.mssql_server_name
  resource_group_name = each.value.rg_name
}