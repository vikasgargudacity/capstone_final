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
    eksctl create cluster --config-file=config_cluster.yaml
fi

