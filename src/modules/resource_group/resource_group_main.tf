# Resource group definition;
resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location
  tags = {
    environment = "${var.environment_variables.environment}"
    CostCenter = "${var.environment_variables.cost_center}"
  }  
}

