FROM ubuntu
# Install all the dependencies from your lock file directly into the # container
RUN sudo apt update && sudo apt upgrade
RUN sudo apt install curl
RUN curl --version
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py

# Get the python 3.9.1 base docker image
FROM python:3.9.1
RUN python -m pip install -U pip
RUN pip install -U pytest
RUN pytest --version
RUN pip install requests
RUN pip install allure-pytest