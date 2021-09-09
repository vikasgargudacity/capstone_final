## The Makefile includes instructions on environment setup and lint tests
IMAGE_NAME="capstone-project"	
IMAGE_VERSION="V1.0"
PROJECT_NAME="capstone-project"

install-dependencies:
	sudo apt-get install -y nodejs npm
	sudo apt-get install docker.io
	sudo npm install -g htmllint-cli
	sudo htmllint init

install-awscli:
	sudo apt install awscli

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

rollback:
	./rollback.sh

cleanup-resources:
	# Remove service & deployment
	./cleanup_resources.sh
