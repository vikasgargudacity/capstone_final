#!/usr/bin/env bash

kubectl get deployments -o wide
kubectl rollout undo deployment ${PROJECT_NAME}
kubectl describe pods | grep -i image
echo
kubectl get pods -o wide
kubectl get deployments -o wide
