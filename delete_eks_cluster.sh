#!/usr/bin/env bash
CLUSTER="capstone-proj"
REGION="us-west-2"
CLUSTER_NAME="${CLUSTER}.${REGION}.eksctl.io"

eksctl delete cluster --name "${CLUSTER}" \
		--region "${REGION_NAME}"

