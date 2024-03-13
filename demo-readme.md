# Demo
Login to Azure first using my script.
```bash
sh /mnt/c/abhinab/gft-git/az-scripts/az-login-gft-nonprod.sh
```

## Hello Terraform
Refer `main.tf` file in the folder hello-terraform. 
```bash
#  switch to hello-terraform folder
cd hello-terraform

terraform init
# Storing the output into a separate plan file for demo. Not required.
terraform plan -out=tfplan 
terraform show tfplan
terraform apply tfplan
```

Uncomment the code code to add tags in the resource group. Rename the file variables.tf.txt to variables.tf.

```bash
terraform plan -out=tfplan -var-file variables/dev.tfvars
terraform apply tfplan
terraform destroy -var-file variables/dev.tfvars
```

## Cloud Catalog using Terraform modules
Refer `main.tf` file in the folder modular-terraform

```bash
# Module created under a separate directory
└── modules
    ├── environment_variables
    │   ├── README.md
    │   └── environment_variables.tf
    └── resource_group
        ├── README.md
        ├── resource_group_main.tf
        └── resource_group_vars.tf
```

```bash
#  switch to modular-terraform folder
cd modular-terraform

terraform init
# Storing the output into a separate plan file for demo. Not required.
terraform plan -out=tfplan -var-file variables/dev.tfvars
terraform apply tfplan
terraform destroy -var-file variables/dev.tfvars
```