#!/usr/bin/env bash
DOCKER_IMAGE="capstone-proj:latest"


# Step 1
# Build image and add a descriptive tag
sudo docker build --tag=${DOCKER_IMAGE} .

# Step 2
# Set the container port
sudo docker run -t --rm -p 80:80 ${DOCKER_IMAGE}
