variable "rg_group1" {
  type = map(object({
    rg_name  = string
    location = string
  }))

}

variable "vnet_name1" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)
    dns_servers   = list(string)
    subnets = map(object({
      subnet_name      = string
      address_prefixes = list(string)

    }))
  }))
}

variable "name_vm" {
  type = map(object({
    nic_name       = string
    location       = string
    rg_name        = string
    vm_name        = string
    size           = string
    admin_username = string
    admin_password = string
    vnet_name      = string
    subnet_name    = string
    pip_name       = string

    os_disk = map(object({
      caching              = string
      storage_account_type = string
    }))


    source_image_reference = map(object({

      publisher = string
      offer     = string
      sku       = string
      version   = string
    }))

  }))
}


variable "name_pip" {
  type = map(object({
    pip_name = string
    rg_name  = string
    location = string

  }))

}

variable "server_mssql" {
  type = map(object({
    mssql_server_name            = string
    rg_name                      = string
    location                     = string
    administrator_login          = string
    administrator_login_password = string
  }))

}

variable "database_sql" {
  type = map(object({
    database_name     = string
    mssql_server_name = string
    rg_name           = string
    collation         = string
    license_type      = string
    max_size_gb       = number
    sku_name          = string
    enclave_type      = string

  }))
}
