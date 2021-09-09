#!/usr/bin/env bash

kubectl rollout status deployment ${PROJECT_NAME}
echo
kubectl get deployments -o wide
