#!/bin/bash

# Exit immediately if a command fails
set -e

# Variables
AWS_REGION="ca-central-1"
REPO_URI="123456789012.dkr.ecr.us-east-1.amazonaws.com/flask-app"  # Replace with your ECR URI
IMAGE_TAG="latest"

# Authenticate Docker to ECR
echo "Logging into Amazon ECR..."
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $REPO_URI

# Stop and remove old container if exists
echo "Stopping old container (if any)..."
docker stop flask-app || true
docker rm flask-app || true

# Pull latest image
echo "Pulling latest image from ECR..."
docker pull $REPO_URI:$IMAGE_TAG

# Run new container
echo "Running new container..."
docker run -d --name flask-app -p 80:5000 $REPO_URI:$IMAGE_TAG

echo "Deployment complete. Flask app should be live on port 80."
