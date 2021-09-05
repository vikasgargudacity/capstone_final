#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

DEPLOYMENT_NAME=capstone-proj
CONTAINER_PORT=80

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=vikasgarg0385/capstone-proj:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ${DEPLOYMENT_NAME} --image=${dockerpath}  &&
    kubectl expose deployment/${DEPLOYMENT_NAME} --type="LoadBalancer" --port ${CONTAINER_PORT}


# Step 3:
# List kubernetes details
echo "Listing deployments"
kubectl get deployments -o wide
echo
echo "Listing services"
kubectl get services -o wide
echo
echo "Listing pods"
kubectl get pods -o wide

