#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nabisco83/devops-training-machine-learning:completed

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f ./docker-compose.yml

# Step 3:
# List kubernetes pods
kubectl get pods -l app=udacity -o wide

# Step 4:
# Forward the container port to a host
kubectl get svc -l app=udacity -o wide
