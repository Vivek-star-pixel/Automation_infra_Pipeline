variable "vm_name" {
  type = map(object({
    nic_name            = string
    location            = string
    rg_name = string
    vm_name             = string
    size                = string
    admin_username      = string
    admin_password      = string
    vnet_name           = string
    subnet_name         = string
    pip_name            = string

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
