#!/usr/bin/env bash

CLUSTER="capstone-proj"
REGION="us-west-2"
CLUSTER_NAME="${CLUSTER}.${REGION}.eksctl.io"

if kubectl config get-clusters | grep -q ${CLUSTER_NAME}; then
    echo "============================================================"
    echo "Cluster '${CLUSTER_NAME}' already exists! Skipping this task"
    echo "============================================================"
else
    echo "============================================================"
    echo "Creating cluster..."
    eksctl create cluster --name ${CLUSTER_NAME}-cluster --version 1.17 \
        --region us-west-2 --nodegroup-name ${CLUSTER_NAME}-nodes --node-type t3.small \
        --nodes-min 2 --nodes-max 3 --ssh-access --ssh-public-key capstone --managed
fi

