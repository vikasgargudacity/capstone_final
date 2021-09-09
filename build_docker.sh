#!/usr/bin/env bash

# Step 1
# Build image and add a descriptive tag
sudo docker build --tag=$IMAGE_NAME:$IMAGE_VERSION .

# Step 2
# Set the container port
# sudo docker run -t --rm -p 80:80 $IMAGE_NAME:$IMAGE_VERSION
