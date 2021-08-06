provider "azurerm" {
  features {}
}

 


resource "azurerm_resource_group" "test1" {
  name     = "test1"
  location = "West Europe"
 
}
