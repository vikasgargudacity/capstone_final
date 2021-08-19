#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=vikasgarg0385/project4


# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u vikasgarg0385
docker tag project4:latest "$dockerpath":1.0.0

# Step 3:
# Push image to a docker repository
docker push "$dockerpath":1.0.0
