provider "azurerm" {
  features {}
}

 
terraform {
  backend "remote" {
    organization = "terraformrepo"

    workspaces {
      name = "apiworkspace"
    }
  }
}

resource "azurerm_resource_group" "test1" {
  name     = "resgrp1"
  location = "West Europe"
 
}
