#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=vikasgarg0385/capstone-proj

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker tag capstone-proj $dockerpath
sudo docker login -u "vikasgarg0385" docker.io

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath

