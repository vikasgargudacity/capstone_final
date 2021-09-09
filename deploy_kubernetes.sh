  
#!/usr/bin/env bash

# Step 1
# Apply Kubernetes Deployments and Services
kubectl apply -f deployment.yml
kubectl apply -f services.yml

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

