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
Steps followed for this project are as below: 

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
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

- Updated the requirements.txt to inlude pylint and pytest and then run install all the required libraries, dependencies as per requirements file. 
```bash
make install
```

- Install hadolint
```bash
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint
```

- Update the app.py file on line number 23. remove the 'f' from the line below. 
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

- Install kubetcl as per the instructions from the link below. 
```bash
https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
```

- Install & start minikube as per the instructions from the link below.
```bash
https://minikube.sigs.k8s.io/docs/start/
```

- Complete the docker file as per the instructions given in the Proejct under "Details project Tasks" page
- Once the above step is done, re-run the make link command to check there are no errors introduced in the Dockerfile 
```bash
make lint
```

- Update the run_docker.sh as per the instructions given in the Proejct under "Details project Tasks" page
- Once the above step is done, run the run_docker.sh file to create the docker image and listen on the port 80
```bash
./run_docker.sh
```
- run the make_prediction.sh file for displaying the prediction output 
```bash
 ./make_prediction.sh
 ```
- run the upload_docker.sh file for to upload an image to docker 
```bash
 ./upload_docker.sh
```
 
Task 5: Configure Kubernetes to Run Locally
- run the below command to start the minikube and check if the cluster is running. 
```bash
 minikube start
 kubectl config view
```
Task 6: Deploy with Kubernetes and Save Output Logs

- Update the run_kubernetes.sh as per the instructions given in the Proejct under "Details project Tasks" page
- run the run_kubernetes.sh file
```bash
./run_kubernetes.sh
```
