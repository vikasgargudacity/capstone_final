## The Makefile includes instructions on environment setup and lint tests
CLUSTER="capstone-proj"
REGION="us-west-2"
CLUSTER_NAME="${CLUSTER}.${REGION}.eksctl.io"

install-for-build:
	sudo apt-get install -y nodejs npm
	sudo apt-get install docker.io
	sudo npm install -g htmllint-cli
	htmllint init

install-hadolint:
	./install_hadolint.sh

install-kubectl:
	./install_kubectl.sh

install-eksctl:
	./install_eksctl.sh

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is linter for HTML file.
	htmllint index.html

build-docker:
	./build_docker.sh

upload-docker:
	./upload_docker.sh

create-eks-cluster:
	./create_eks_cluster.sh

deploy-kubernetes: 
	./deploy_kubernetes.sh

rolling-update:
	./rolling_updates.sh

rollout-status:
	./rollout_status.sh

rollback:
	./rollback.sh

cleanup-resources:
	# Remove service & deployment
	./cleanup_resources.sh

delete-eks-cluster:
	# delete the cluster
	./delete_eks_cluster.sh
