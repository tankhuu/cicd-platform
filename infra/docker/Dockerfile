FROM jenkins/jenkins:lts-alpine-jdk17
#FROM jenkins/jenkins:2.361.1-lts-jdk11

# USER root
# RUN apt-get update && apt-get install -y lsb-release
# RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
#   https://download.docker.com/linux/debian/gpg
# RUN echo "deb [arch=$(dpkg --print-architecture) \
#   signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
#   https://download.docker.com/linux/debian \
#   $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
# RUN apt-get update && apt-get install -y docker-ce-cli ca-certificates curl apt-transport-https python3 python3-pip

# # INSTALL MORE TOOLS HERE
# # ...

# # [optional] Fix Unicode issues from pip 
# # ENV LC_CTYPE=en_US.UTF-8
# # ENV LANG=en_US.UTF-8
# # ENV LC_ALL=en_US.UTF-8

# ENV ANSIBLE_VERSION=6.3.0
# # ENV KUBECTL_VERSION=1.25.0
# ENV HVAC_VERSION=0.11.2
# # ENV=HASHICORP_VAULT_VERSION=1.5.0

# # Install awscli v2
# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
#   unzip awscliv2.zip && \
#   ./aws/install && \
#   rm -r aws

# # Install necessary tool
# RUN pip3 install ansible==${ANSIBLE_VERSION} yq hvac==${HVAC_VERSION}

# # Install kubectl
# RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
#   install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
#   kubectl version --client

# # Install Hashicorp Vault
# # RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg >/dev/null && \
# #   gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint && \
# #   echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list && \
# #   sudo apt update && sudo apt install vault

# USER jenkins

# # Install plugins & init
# COPY plugins.txt /usr/share/jenkins/ref/
# ADD init.groovy.d /usr/share/jenkins/ref/init.groovy.d
# RUN   

# INSTALL & CONFIGURE JENKINS
# ARG user=jenkins
# ARG group=jenkins
# ARG uid=1000
# ARG gid=1000
# ARG http_port=8080
# ARG agent_port=50000
# ARG JENKINS_HOME=/var/jenkins_home

# VOLUME
# JENKINS HOME DIRECTORY IS A LOVUME
# Configuration & build history can be persisted and survive image upgrades
# VOLUME ${JENKINS_HOME}