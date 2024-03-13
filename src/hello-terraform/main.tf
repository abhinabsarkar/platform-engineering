# Use the Azure provider
provider "azurerm" {
  features {}
}

# Create a resource group in Azure
resource "azurerm_resource_group" "rg" {
    name     = "rg-demo"
    location = "canada central"
    tags = {
        environment = "${var.environment_variables.environment}"
    }  
}