  
#!/usr/bin/env bash
DEPLOYMENT_NAME = capstone-proj-deployment
DOCKER_IMAGE="capstone-proj:latest"
CONTAINER_PORT=80
dockerpath=vikasgarg0385/${DOCKER_IMAGE}


# Step 1
# Run the Docker Hub container with kubernetes
kubectl create deployment ${DEPLOYMENT_NAME} --image=${dockerpath} &&
    kubectl expose deployment/${DEPLOYMENT_NAME} --type="LoadBalancer" --port ${CONTAINER_PORT}

# Step 1:
# List kubernetes details
echo "Listing deployments"
kubectl get deployments -o wide
echo
echo "Listing services"
kubectl get services -o wide
echo
echo "Listing pods"
kubectl get pods -o wide
