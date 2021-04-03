FROM ubuntu
USER root
RUN sudo apt update && sudo apt upgrade
RUN sudo apt install curl
RUN curl --version

# Get the python 3.9.1 base docker image
FROM python:3.9.1
USER root
RUN sudo apt-get -y install python3-pip
RUN pip3 --version
RUN pip3 install requests
RUN pip3 install -U pytest
RUN pip3 install allure-pytest
CMD ["python", "-c", "print('Hi This is an experiment')"]
COPY test_sample.py /
COPY hello_world.py /
CMD ["python", "hello_world.py"]


# Get jenkins image
FROM jenkins/jenkins:lts
USER root
RUN uname -a && cat /etc/*release
#install docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN usermod -a -G root jenkins
RUN usermod -aG docker jenkins

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER jenkins
