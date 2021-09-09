
#!/usr/bin/env bash
kubectl get deployments -o wide
# make rolling-update
kubectl set image deployment/$PROJECT_NAME $PROJECT_NAME=$DOCKERHUB_USERID/$IMAGE_NAME:$IMAGE_VERSION

echo "Listing deployments"
kubectl get deployments -o wide
echo
echo "Listing services"
kubectl get services -o wide
echo
echo "Listing pods"
kubectl get pods -o wide
