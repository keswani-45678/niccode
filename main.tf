provider "azurerm" {
  features {}
}

 

locals{
tags = {"deployment-environment" = "QA", "env"="dev"}
}


resource "azurerm_resource_group" "example" {
  name     = "test1"
  location = "West Europe"
  tags = concat(local.tags,var.tagsvalue)
}
