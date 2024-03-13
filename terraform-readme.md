# Terraform

## Overview
Cloud agnostic tool that is compatible with any cloud infrastructure and can be moved to and from different cloud environments without any operational issues - `Terraform by HashiCorp is an infrastructure as code (IaC) open-source software`.

![alt txt](/images/terraform.png)

## Terraform components
Terraform is built on top of `Go` language. Terraform files are written using `Hashicorp Configuration Language (HCL)` which is similar to `YAML`.

Using Terraform language has following main components
1. `Providers` - plugin that enables interaction with an API, e.g. Azure Cloud provider
2. `Variables` - Just like code, parameters for a Terraform module
3. `Resources` - Infrastructure objects
4. `State` - stores metadata about the managed infrastructure & configuration

![alt txt](/images/TerraformComponents.png)

## Terraform commands

* `init` - download dependencies (modules and providers)
    > `module` - think of it as function in terms of code i.e. reuse resource configurations with Terraform. It consists of `input variables`, `output variables` & `resources`. As a standard best practice, modules are created under a separate directory `modules/`
* `plan` - show expected outcome of the code
* `apply` - execute the instructions, create the infrastructure resources
* `destroy` - remove all the resources associated with this deployment

![alt txt](/images/terraform-commands.png)

## How Terraform works?

![alt txt](/images/terraform-plan-apply.png)

## References
* [Terraform basics](https://awstip.com/a-gentle-introduction-to-terraform-part-1-2da61eba7032)

