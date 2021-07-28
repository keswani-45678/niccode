
provider "azurerm" {
  features {}
}

 

locals
{
tags = {    "deployment-environment" = "QA", "env"="dev"}
}


resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
  tags = concat(tags,var.tagsvalue)
}
