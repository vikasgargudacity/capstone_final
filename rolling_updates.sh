
#!/usr/bin/env bash
DEPLOYMENT_NAME=capstone-proj
IMAGE_NAME=registry.hub.docker.com/vikasgarg0385/capstone-proj:latest
kubectl get deployments -o wide
kubectl set image deployments/${DEPLOYMENT_NAME} \
	${DEPLOYMENT_NAME}=${IMAGE_NAME}
echo
kubectl get deployments -o wide
kubectl describe pods | grep -i image
kubectl get pods -o wide
