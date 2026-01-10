terraform {
  required_version = ">= 1.5.0" #updated batao
  backend "azurerm" {
    resource_group_name  = "vky"
    storage_account_name = "keystroke111111"
    container_name       = "mysecrettffile"
    key                  = "secretfile1.tfstate"
    subscription_id      = "a0366c1d-7e23-4176-93a9-0e084725b2d4"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }

}
provider "azurerm" {
  features {}
  subscription_id = "a0366c1d-7e23-4176-93a9-0e084725b2d4"
}
