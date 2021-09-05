#!/usr/bin/env bash

DEPLOYMENT_NAME=capstone-proj
kubectl rollout status deployment ${DEPLOYMENT_NAME}
echo
kubectl get deployments -o wide
