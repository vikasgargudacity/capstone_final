#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `build_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=${DOCKERHUB_USERID}/${IMAGE_NAME}:${IMAGE_VERSION}

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker tag $dockerpath $dockerpath
sudo docker login -u ${DOCKERHUB_USERID} docker.io

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath
