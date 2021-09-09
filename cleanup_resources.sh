#!/usr/bin/env bash
DEPLOYMENT_NAME=capstone-project
CLUSTER="capstone-project"
REGION="us-west-2"

# Remove service & deployment
kubectl delete services ${DEPLOYMENT_NAME}
echo
kubectl delete deployments ${DEPLOYMENT_NAME}
echo
kubectl get services
echo
kubectl get deployments
echo
kubectl get pods

# Delete the Cluster 
echo
eksctl delete cluster --name "${CLUSTER}" --region "${REGION_NAME}"

