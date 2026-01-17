variable "rg_group" {
  type = map(object({
    rg_name     = string
    location = string
  }))

}
