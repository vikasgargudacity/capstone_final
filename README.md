## CircleCI status badge  
[![CircleCI](https://circleci.com/gh/vikasgargudacity/project4_final/tree/master.svg?style=svg)](https://circleci.com/gh/vikasgargudacity/project4_final/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
Steps followed for this project are as below: 

- Imported the GIT repository into my GITHUB location. 

```bash
from "https://github.com/udacity/DevOps_Microservices.git"  to 
"https://github.com/vikasgargudacity/DevOps_Microservices.git"
```

- Created an EC2 instance t2.medium and increased the storage to 60GB with SSH 22 port being open. Please note use the the Cloud 9 image as required. 

- Logged in using UBUNTU terminal from Windows Desktop and SSH into the system. 

- Ran the command below to clone the repository from GITHUB to EC2 instance and then CD into the directory. 
```bash
git clone https://github.com/vikasgargudacity/DevOps_Microservices
cd DevOps_Microservices/project-ml-microservice-kubernetes
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
