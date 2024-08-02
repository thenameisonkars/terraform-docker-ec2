# terraform-docker-ec2

End-to-End Deployment with Terraform and Docker:
Use Terraform to provision an EC2 instance on AWS.
Install Docker on the EC2 instance.
Deploy a Dockerized application to the instance.
Automate the entire process with a single Terraform configuration. guide to me do this project

# Terraform Docker EC2

This project uses Terraform to provision an AWS EC2 instance, install Docker on it, and deploy a Dockerized application.

## Prerequisites

- AWS account with necessary permissions
- AWS CLI configured with your credentials
- Terraform installed
- A Dockerized application

## Usage

1. Clone the repository:

    ```sh
    git clone https://github.com/your-username/terraform-docker-ec2.git
    cd terraform-docker-ec2
    ```

2. Update the `variables.tf` file with your key pair name, Docker image, and other configurations if necessary.

3. Initialize Terraform:

    ```sh
    terraform init
    ```

4. Plan the infrastructure:

    ```sh
    terraform plan
    ```

5. Apply the configuration:

    ```sh
    terraform apply
    ```

6. Access your application using the public IP address of the EC2 instance.

## Cleanup

To destroy the resources:

```sh
terraform destroy
