# Get the python 3.9.1 base docker image
FROM python:3.9.1
# Install all the dependencies from your lock file directly into the # container
RUN python get-pip.py
RUN python -m pip install -U pip
RUN pip install -U pytest
RUN pytest --version
RUN pip install requests
RUN pip install allure-pytest