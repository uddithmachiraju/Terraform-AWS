**Prerequisites**:  
    1. Install `Terraform` and `AWS`  
    2. Configure AWS credentials to work with Terraform

1. You open a folder and run  
    a. `terraform init` - Initilize the terraform  
    b. `terraform plan -out=<name-of-the-plan>` - Plans the Structure  
    c. `terraform apply [options-<name-of-the-plan>]` - Creates the instance and others in the cloud.  