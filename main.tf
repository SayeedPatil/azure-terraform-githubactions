terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "tfstateterraform123"   # <your actual storage account name>
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
