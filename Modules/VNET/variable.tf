variable "vnet_name" {
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
