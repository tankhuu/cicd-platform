# docker-image-jenkins
Create Docker Image of Jenkins

Resembles the Official Jenkins Docker Image with some custom steps to provide Configuration as Code & Pipeline as Code:
- Dockerfile
- init.groovy
- install-plugins

## Features

- Load config from Configuration as Code of jenkins.yaml file
  + AWS Cloud Integration
    - EC2 Instance Agent (if needed)
    - SSM
    - EKS Integration
    - ...
  + GitHub Integration
- Install plugins from plugin.txt
- Load HouseKeeping Jobs when launching Jenkins
  + backup
  + restore
  + ...
- Create & run Seed Jobs: Create all necessary pipelines
  + Applications:
    - Backend
      + serviceA
      + serviceB
      + ...
    - Frontend
    - Mobile
  + Tooling

## Build

```
version="0.1.0"
docker build -t jackiekhuu/jenkins:$version .
```

## Publish to Repository

### DockerHub

### AWS ECR

## Run locally

```
docker run \
  --name jenkins \
  --restart=on-failure \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  jenkins/jenkins:lts-alpine-jdk17
```