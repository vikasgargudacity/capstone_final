## CircleCI status badge  
[![CircleCI](https://circleci.com/gh/vikasgargudacity/project4_final/tree/master.svg?style=svg)](https://circleci.com/gh/vikasgargudacity/project4_final/tree/master)

## Project Overview

This capstone project showcases the use of several CI/CD tools and cloud services covered in the program [Udacity - AWS Cloud DevOps Engineer.](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991)

### Project Tasks

Using a CI/CD approach, we build a [Docker](https://www.docker.com/resources/what-container) image and then run it in a [Kubernetes](https://kubernetes.io/) cluster.

The project includes the following main tasks:

* Initialize the Python virtual environment 
* Install all necessary dependencies 
* Lints Dockerfile and python code
* Create a Dockerfile to "containerize" the housing price prediction application
* Deploy to a public Docker Registry the containerized application 
* Deploy a Kubernetes cluster
* Deploy the application
* Update the app in the cluster, using a rolling-update strategy
* Delete the cluster

The CirclCI pipeline([config.yml](.circleci/config.yml)) will execute the following steps automatically:

* `make setup`
* `make install`
* `make lint`
* Build and publish the container image

To verify that the app is working, write your deployment's IP into your browser using port 80, like
`http://localhost:80` or `http://LOAD_BALANCER_IP:80` (according to your environment).

---
### Steps followed for this project are as below: 

- Created an EC2 instance t2.medium and increased the storage to 60GB with SSH 22 port being open. Please note use the the Cloud9 image (ami-06f90483830cf9c0e) as required to ensure it installs the required Python version 3.7. 

- Logged in using UBUNTU terminal from Windows Desktop and SSH into the system. 

- Ran the command below to clone the repository from GITHUB to EC2 instance and then CD into the directory. 
```bash
git clone https://github.com/vikasgargudacity/vikas_capstone
cd vikas_capstone
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

- Updated the requirements.txt to inlude pylint and pytest and then run install all the required libraries, dependencies as per requirements file. 
```bash
make install-for-build
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

- Update the app.py file on line number 23. add the 'f' on the line below to create a lint error. 
```bash
html = **f**"<h3>Sklearn Prediction Home</h3>"
```

- Run the lint command to run the lint for the Dockerfile and app.py. The lint command will show the error. 
```bash
make lint
```

- Update the app.py file on line number 23. remove the 'f' on the line below to fix the lint error.  
```bash
html = **f**"<h3>Sklearn Prediction Home</h3>"
```


- Run the lint command to run the lint for the Dockerfile and app.py
```bash
make lint
```

- Start the docker service 
```bash
sudo service docker start
```

- Run the Docker file
```bash
make run-docker
```

- run the make-prediction 
```bash
 make make-prediction 
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

- create Kubernetes cluster Deployments and Services.  
```bash
make kubernetes-deployment
```

- perform the rolling updates
```bash
make rolling-update
```

- delete the deployments, services and EKS clusters created.
```bash
make delete-eks-cluster
```
