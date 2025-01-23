# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
required_providers {
azurerm = {
source  = "hashicorp/azurerm"
version = "~>4.0"
    }
}
}

provider "azurerm" {
features {}        
subscription_id = "1e50b0a2-d339-421a-854d-1a415cd15bad"
}

resource "azurerm_resource_group" "myrg" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "rg2" {
 name  = "remoterg1"
 location = "eastus2"

}