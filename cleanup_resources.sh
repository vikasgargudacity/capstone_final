#!/usr/bin/env bash

# Remove service & deployment
kubectl delete services ${PROJECT_NAME}
echo
kubectl delete deployments ${PROJECT_NAME}
echo
kubectl get services
echo
kubectl get deployments
echo
kubectl get pods

# Delete the Cluster 
echo
eksctl delete cluster --name "${PROJECT_NAME}" --region "${AWS_DEFAULT_REGION}"

