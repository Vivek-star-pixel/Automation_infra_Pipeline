module "rg_group1" {
  source   = "../../Modules/RG"
  rg_group = var.rg_group1

}

module "vnet_name1" {
  source     = "../../Modules/VNET"
  depends_on = [module.rg_group1]
  vnet_name  = var.vnet_name1

}


module "name_pip" {
  source     = "../../Modules/PIP"
  depends_on = [module.rg_group1, module.vnet_name1]
  pip_name   = var.name_pip
}

module "name_vm" {
  source     = "../../Modules/AZ_VM"
  depends_on = [module.rg_group1, module.vnet_name1, module.name_pip]
  vm_name    = var.name_vm
}

module "server_mssql" {
  source       = "../../Modules/SQL_server"
  depends_on   = [module.rg_group1]
  mssql_server = var.server_mssql

}

module "database_sql" {
  source       = "../../Modules/SQL_Database"
  depends_on   = [module.rg_group1, module.server_mssql]
  sql_database = var.database_sql
}

