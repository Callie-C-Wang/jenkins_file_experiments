# Get the python 3.9.1 base docker image
FROM python:3.9.1
RUN pip install requests
CMD ["python", "-c", "print('Hi This is an experiment')"]
COPY test_sample.py /
COPY hello_world.py /
