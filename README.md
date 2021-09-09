## CircleCI status badge  
[![CircleCI](https://circleci.com/gh/vikasgargudacity/project4_final/tree/master.svg?style=svg)](https://circleci.com/gh/vikasgargudacity/project4_final/tree/master)

## Project Overview

This capstone project showcases the use of several CI/CD tools and cloud services covered in the program [Udacity - AWS Cloud DevOps Engineer.](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991)

## Steps followed for this project are as below: 

### Manually starting K8s:
- Created an EC2 instance t2.medium and increased the storage to 60GB with SSH 22 port being open. Please note use the the Cloud9 image (ami-06f90483830cf9c0e) as required to ensure it installs the required Python version 3.7. 

- Logged in using UBUNTU terminal from Windows Desktop and SSH into the system. 

- Ran the command below to clone the repository from GITHUB to EC2 instance and then CD into the directory. 
```bash
git clone https://github.com/vikasgargudacity/capstone_final
cd capstone_final
```

- Installing various dependencies related to Python3 Virtual environment , make commnand etc.
```bash
sudo apt-get update
sudo apt-get install python3-venv 
sudo apt-get install make
```

- Create (and activate) a new environment, named .devops with Python 3. If prompted to proceed with the install (Proceed [y]/n) type y.
```bash
python3 -m venv ~/.capstone
source ~/.capstone/bin/activate
```

- Install various dependencies such as nodejs, awscli, npm, Docker.io, htmllint-cli
```bash
make install-dependencies
```

- Install hadolint
```bash
make install-hadolint
```

- Install kubectl
```bash
make install-kubectl
```
- Install eksctl
```bash
make install-eksctl
```

- Run the lint command to run the lint for the Dockerfile and index.html. Error has been introduced for the first run in the HTML Tag to showcase unsuccessful LINT and the Successful Lint
```bash
make lint
```

- Start the docker service 
```bash
sudo service docker start
```

- Run the Docker file
```bash
make build-docker
```

- run the upload_docker.sh file for to upload an image to docker 
```bash
make upload-docker
```
 
- configure the AWS environment parameters
```bash
AWS Access Key ID [None]: ------ 
AWS Secret Access Key [None]: ----- 
Default region name [None]: us-west-2
Default output format [None]:
```

- create Kubernetes clusters.  
```bash
make create-eks-cluster
```

- create Kubernetes deployments and Services.   
```bash
make deploy-kubernetes
```

- perform the rolling updates
```bash
make deploy-kubernetes
```

- cleanup resources - Delete the deployments, services and EKS clusters created.
```bash
make cleanup-resources
make delete-eks-cluster
```

### Doing it Via CICD:

- Run the first build job to perform the below 3 steps. 
```bash
Create Virtual environemtn
Install dependencies 
Run lint for the Index file (have attached screenshot with failed and passed lint scenario)
```

- Run the next job to build and push the image to the docker hub. 
```bash
Build & uploading the Docker image
```

- Run the third job to install K8s related dependencies, awscli, configure AWS Region, create Kubernetes Cluster, Deployment and Services. 
```bash
install kubectl
install eksctl
install awscli
configure the AWS region
create K8s cluster
Create the deployment and services
```

- Rolling Deployment job (only to be executed when there is a commit on the rolling-update branch)  
```bash
install kubectl
install eksctl
install awscli
configure the AWS region
Perform rolling updates to the K8s cluster nodes
```
