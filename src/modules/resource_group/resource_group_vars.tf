# Common module variables;

variable "environment_variables" {
  description = "the environment variables"
  type        = map(string)
  default     = {}
}

# Required parameters;
variable "name" {
  description = "name of the resource group"
  type        = string
}

variable "location" {
  description = "the Azure Region where the resource group should exist (eg. canadaeast)."
  type        = string
}

# Optional parameters;

variable "tags" {
  description = "An override to specify tags which will be added to the resoruce_group; use 'custom_tags' to append tags to the default set."
  type        = map(string)
  default     = {}
}

variable "role_assignments" {
  description = "identities and roles mapping ."
  type        = any
  default     = {}
}
