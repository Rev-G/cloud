terraform {
  backend "azurerm" {
    ##note these items are being passed in via a partial config at runtime
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.78.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

data "azurerm_resource_group" "sandboxgroup" {
  name = var.resource_group
}