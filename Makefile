## The Makefile includes instructions on environment setup and lint tests
CLUSTER="Capstone-proj-vikas"
REGION="us-west-2"
CLUSTER_NAME="${CLUSTER}.${REGION}.eksctl.io"

install-for-build:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
	pip install -r requirements.txt

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
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

build-docker:
	./build_docker.sh

run-docker: build-docker
	./run_docker.sh

make-prediction:
	./make_prediction.sh

upload-docker:
	./upload_docker.sh

create-eks-cluster:
	./create_eks_cluster.sh

kubernetes-deployment: create-eks-cluster
	./run_kubernetes.sh

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
