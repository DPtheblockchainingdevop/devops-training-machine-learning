[![CircleCI](https://circleci.com/gh/DPtheblockchainingdevop/devops-training-machine-learning.svg?style=svg)](https://app.circleci.com/pipelines/github/DPtheblockchainingdevop/devops-training-machine-learning)

## Project Overview

In this project, I applied the skills acquired in the Udacity course to operationalize a Machine Learning Microservice API. 

I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tested my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I performed:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase my abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
    1. Install docker `sudo apt install docker`
    2. Validate docker is installed `docker --version`
* Setup and Configure Kubernetes locally
    1. Download minikube `curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64   && chmod +x minikube` 
    2. Install minikube `sudo install minikube /usr/local/bin/`
    3. Start minikube `minikube start --driver=docker`
    4. Validate minikube status `minikube status`
* Create Flask app in Container `./run_kubernetes`
* Run via kubectl
* **Optional** Open minikube tunnel `minikube tunnel`
    - For more information see [minikube accessing apps](https://minikube.sigs.k8s.io/docs/handbook/accessing/)
