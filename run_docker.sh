#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -f ~/environment/devops-training-machine-learning/Dockerfile -t python/udacity-projects:latest .

# Step 2: 
# List docker images
docker images python/udacity-projects

# Step 3: 
# Run flask app
docker run -p 80:80 python/udacity-projects