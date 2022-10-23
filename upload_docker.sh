#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=lukhee/ml-microservices:1.0
dockerimage=ml-microservices

# Step 2:  
# Authenticate & tag
# docker tag $dockerpath dockerpath:latest
docker login
docker tag $dockerimage $dockerpath
# docker commit $dockerimage $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
