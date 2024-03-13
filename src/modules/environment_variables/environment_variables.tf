# Input Variables;

variable "environment" {
  description = "the type of environment or region name; i.e. dev, test, uat, sandbox, nonprod or prod."
  type        = string
  validation {
    condition     = can(regex("^(dev|prod|test|uat|sandbox|nonprod)", var.environment))
    error_message = "Validation Error: Prefix of the environment value must begin with one of: dev, test, uat, sandbox, nonprod or prod."
  }
}

variable "cost_center" {
  description = "the cost center responsible for changes assciated with these resources."
  type        = string
}

# Output variables;

output "values" {
  description = "a common set of values which can be shared between modules."
  value = {
    "cost_center"      = var.cost_center,
    "environment"      = var.environment,
  }
}
