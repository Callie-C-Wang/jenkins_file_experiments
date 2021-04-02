FROM ubuntu
RUN sudo apt update && sudo apt upgrade
RUN sudo apt install curl
RUN curl --version
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py

# Get the python 3.9.1 base docker image
FROM python:3.9.1
RUN pip install requests
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
