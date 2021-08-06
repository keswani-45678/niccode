provider "azurerm" {
  features {}
}

 
terraform {
  backend "remote" {
    organization = "terraformrepo"

    workspaces {
      name = "testdemo"
    }
  }
}

resource "azurerm_resource_group" "test1" {
  name     = "resgrp"
  location = "West Europe"
 
}
