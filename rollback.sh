#!/usr/bin/env bash

DEPLOYMENT_NAME=capstone-proj
kubectl get deployments -o wide
kubectl rollout undo deployment ${DEPLOYMENT_NAME}
kubectl describe pods | grep -i image
echo
kubectl get pods -o wide
kubectl get deployments -o wide
