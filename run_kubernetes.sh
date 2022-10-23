#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=lukhee/ml-microservices:1.0
kubename=ml-microservices-2

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-microservices --image=lukhee/ml-microservices:1.0
# kubectl run $kubename --image=$dockerpath
 kubectl create deployment ml-microservices --image=lukhee/ml-microservices:1.0 --port=80

# Step 3:
# List kubernetes pods
# kubectl get pods $kubename
kubectl get pods, svc, node

# Step 4:
# Forward the container port to a host
kubectl expose deployment ml-microservices --port=80 --target-port=80 --name=lb-service --type=LoadBalancer

