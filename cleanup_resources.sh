#!/usr/bin/env bash
DEPLOYMENT_NAME=capstone-proj-deployment
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
