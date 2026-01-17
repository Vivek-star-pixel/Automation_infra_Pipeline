variable "mssql_server" {
  type = map(object({
    mssql_server_name            = string
    rg_name                      = string
    location                     = string
    administrator_login          = string
    administrator_login_password = string
  }))

}
