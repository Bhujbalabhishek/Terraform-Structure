# Terraform-Structure
Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. Terraform codifies cloud APIs into declarative configuration files.

Deliver Infrastructure as Code

<b>Write</b>

Write infrastructure as code using declarative configuration files. HashiCorp Configuration Language (HCL) allows for concise descriptions of resources using blocks, arguments, and expressions.

<b>Plan</b>

Run terraform plan to check whether the execution plan for a configuration matches your expectations before provisioning or changing infrastructure.

<b>Apply</b>

Apply changes to hundreds of cloud providers with terraform apply to reach the desired state of the configuration.

#<b>Problem statment:-</b>
As create a db and user with granted permissions using terraform for dev, prod, stg without using the folders such as dev, prod and stg.
for this there are many ways to achieve this using Terraform.
In this repo I have used "Terraform workspace" to create different db and user with granted permissions for each environment.

