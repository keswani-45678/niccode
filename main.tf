provider "azurerm" {
  features {}
}

 


resource "azurerm_resource_group" "test1" {
  name     = "resgrp"
  location = "West Europe"
 
}
