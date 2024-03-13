variable "environment_variables" {
  description = "A collection of environment variables used for resource naming and tagging."
  type = object({
    environment      = string # Environment being provisioned ie. dev, uat, prod.
    cost_center      = string # Cost Center for the platform.
  })
}