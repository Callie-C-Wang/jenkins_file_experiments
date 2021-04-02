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