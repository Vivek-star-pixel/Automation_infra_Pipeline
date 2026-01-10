terraform {
  required_version = ">= 1.5.0" #updated batao
  backend "azurerm" {
    resource_group_name  = "vky"
    storage_account_name = "keystroke111111"
    container_name       = "mysecrettffile"
    key                  = "secretfile1.tfstate"
    subscription_id      = "7e450572-1056-4117-9e7b-97e717138408"
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
  subscription_id = "7e450572-1056-4117-9e7b-97e717138408"
}
