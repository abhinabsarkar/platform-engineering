# Use the Azure provider
provider "azurerm" {
  features {}
}

# Create a common set of environment variables to share among modules;
module "environment_variables" {
  source           = "../modules/environment_variables/"
  environment      = var.environment_variables.environment
  cost_center      = var.environment_variables.cost_center
}

# Create the resource group for Azure resources associated with application
module "resource_group" {
  source                = "../modules/resource_group"
  environment_variables = module.environment_variables.values
  name      = "rg-demo"
  location  = "canada central"
  tags = { 
      environment = "${var.environment_variables.environment}"
      CostCenter = "${var.environment_variables.cost_center}"
    }
}