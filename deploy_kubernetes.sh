  
#!/usr/bin/env bash

# Step 1
# Run the Docker Hub container with kubernetes
kubectl apply -f deployment.yaml
kubectl apply -f services.yaml

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
