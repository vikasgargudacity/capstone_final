#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `build_docker.sh`
DOCKER_IMAGE="capstone-proj:latest"

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=vikasgarg0385/${DOCKER_IMAGE}

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker tag ${DOCKER_IMAGE} $dockerpath
sudo docker login -u "$DOCKERHUB_USERID" -p $DOCKERHUB_PASSWORD docker.io

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath
