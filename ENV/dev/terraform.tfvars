rg_group1 = {
  RG1 = {
    rg_name  = "yashna"
    location = "West US 2"
  }
}

vnet_name1 = {
  vnet1 = {
    vnet_name     = "vivek-vnet"
    location      = "West US 2"
    rg_name       = "yashna"
    address_space = ["10.0.0.0/16"]
    dns_servers   = ["10.0.0.4", "10.0.0.5"]

    subnets = {
      subnet1 = {
        subnet_name      = "subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }

      subnet2 = {
        subnet_name      = "subnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}


name_vm = {

  vm1 = {
    vm_name        = "vky1-vm"
    nic_name       = "vky-nic"
    location       = "West US 2"
    rg_name        = "yashna"
    size           = "Standard_D2s_v3"
    admin_username = "Vivek@2025"
    admin_password = "Vivek@12345"
    vnet_name      = "vivek-vnet"
    subnet_name    = "subnet1"
    pip_name       = "vky-pip1"

    os_disk = {
      osdisk1 = {

        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
      }

    }


    source_image_reference = {

      source_image_reference1 = {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts"
        version   = "latest"

      }
    }
  }


  vm2 = {
    vm_name        = "vky2-vm"
    nic_name       = "vky-nic2"
    location       = "West US 2"
    rg_name        = "yashna"
    size           = "Standard_D2s_v3"
    admin_username = "Vivek@2025"
    admin_password = "Vivek@12345"
    vnet_name      = "vivek-vnet"
    subnet_name    = "subnet2"
    pip_name       = "vky-pip2"

    os_disk = {
      osdisk2 = {

        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
      }

    }




    source_image_reference = {

      source_image_reference2 = {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts"
        version   = "latest"

      }
    }
  }

}


name_pip = {
  pip1 = {
    pip_name = "vky-pip1"
    rg_name  = "yashna"
    location = "West US 2"
  }

  pip2 = {
    pip_name = "vky-pip2"
    rg_name  = "yashna"
    location = "West US 2"
  }
}


server_mssql = {
  server_mssql1 = {
    mssql_server_name            = "vky-server"
    rg_name                      = "yashna"
    location                     = "West US 2"
    administrator_login          = "Vivek@2026"
    administrator_login_password = "Vivek@12345"

  }
}


database_sql = {

  database_sql1 = {
    database_name     = "vky-database"
    rg_name           = "yashna"
    collation         = "SQL_Latin1_General_CP1_CI_AS"
    license_type      = "LicenseIncluded"
    max_size_gb       = 2
    sku_name          = "S0"
    enclave_type      = "VBS"
    mssql_server_name = "vky-server"

  }
}
