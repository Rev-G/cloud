terraform {
  backend "azurerm" {
    ##note these items are being passed in via a partial config at runtime
    # resource_group_name  = ""
    # storage_account_name = ""
    # container_name       = ""
    # key                  = ""
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.76.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}