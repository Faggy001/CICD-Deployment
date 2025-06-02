# CICD-Deployment
Group B project task

✅WEEK 2 MENTORSHIP PROJECT BY GROUP B TEAM

✅GROUP B TEAM: Fagoroye Sanumi O.
                 & Lawal Jonathan
               
✏️**TOPIC**: Set Up CI/CD Pipeline to Deploy Python Web App on AWS

**Project CI/CD and Infrastructure Deployment**
This repository contains automated workflows to manage both your infrastructure deployment using Terraform and your application deployment using Docker on AWS.

**Terraform Deploy Workflow**

This workflow automates the provisioning and management of AWS infrastructure using Terraform.

Workflow Trigger: Can be triggered manually through the GitHub Actions UI.
Optionally configurable to trigger on pushes to the main branch, ignoring documentation changes.

**Environment Variables**:

AWS_REGION: AWS region where resources are deployed (e.g., ca-central-1).

TERRAFORM_VER: Terraform CLI version used (e.g., 1.7.5).

**Jobs and Steps**:

Checkout the repository to access Terraform code.

Setup the specified Terraform version.

Configure AWS credentials securely via GitHub Secrets.

Check Terraform code formatting.

Initialize Terraform working directory.

Validate Terraform configuration.

Generate a Terraform plan.

Apply the Terraform plan automatically.

Display Terraform outputs after deployment.

**How to Use**:

Add your AWS credentials (AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY) to your GitHub repository secrets.

Trigger the workflow manually or configure it to run automatically on push events.

The Terraform infrastructure will be deployed or updated accordingly.

**Docker Build and Deploy Workflow**

This workflow automates building a Docker image from your application code, pushing it to Amazon Elastic Container Registry (ECR), and deploying it to an AWS EC2 instance.

**Workflow Triggers**: Can be triggered manually via GitHub Actions UI.

Optionally triggered on changes to specific folders or files.

**Environment Variables**:

AWS_REGION: AWS region used (e.g., ca-central-1).

AWS_EC2: Name tag of the EC2 instance where the container will be deployed.

ECR_REPO: Name of the Docker repository in Amazon ECR.

GIT_SHA: Git commit SHA used to tag Docker images uniquely.

**Jobs and Steps**:

**Build Job**:

Checkout the repository.

Configure AWS credentials securely.

Login to Amazon ECR Docker registry.

Build the Docker image tagged with the current Git SHA.

Push the Docker image to the ECR repository.

**Deploy Job**:

Checkout the repository again.

Configure AWS credentials.

Retrieve the public IP address of the EC2 instance.

Decode the SSH private key for secure access.

SSH into the EC2 instance and:

Remove existing Docker containers and images.

Login to ECR to pull the Docker image.

Run the Docker container exposing it on port 80.

**How to Use**:

Store AWS credentials (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_ACCOUNT_ID) and the EC2 SSH private key (EC2_KEY) in GitHub Secrets.

Trigger the workflow manually or configure automatic triggers.

Your application will be automatically built, pushed, and deployed to the EC2 instance.

**Summary**: The Dockerized Flask application will be deployed to an AWS EC2 instance using GitHub Actions. This pipeline implements core DevOps principles by enabling CI/CD (Continuous Integration and Continuous Deployment), ensuring automatic builds and deployments upon source changes.

On modification of application code, dependencies, or the Dockerfile, the GitHub Actions workflow is triggered. It builds a new Docker image, pushes it to Amazon Elastic Container Registry (ECR), and redeploys the updated container to the EC2 instance. The application becomes accessible via the EC2 instance’s public IP on port 80.

The Terraform workflow automates infrastructure lifecycle management on AWS.

The Docker workflow automates application container build, registry management, and deployment.

Both workflows rely on securely stored secrets for AWS authentication and EC2 SSH access.


**proof of the deployed app running on AWS**
![proof](<Images/Screenshot 2025-06-02 135108.png>)

![proof](<Images/Screenshot 2025-06-02 135045.png>)

![proof](<Images/Screenshot 2025-06-02 153703.png>)

![proof](<Images/Screenshot 2025-06-02 153925.png>)
