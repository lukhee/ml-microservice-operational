#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=lukhee/ml-microservices
kubename=ml-microservices-3

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $kubename --image=$dockerpath
# kubectl run $kubename --image=$dockerpath
 kubectl create deployment $kubename --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
# kubectl get pods $kubename
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment $kubename --port=80 --target-port=80 --name=lb-service --type=LoadBalancer

