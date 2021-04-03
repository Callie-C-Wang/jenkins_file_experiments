# jenkins_file_experiments
This is for learning of writing jenkinsfile

## build a docker image for jenkins
docker build -t myjenkins .

## run that image
docker run -ti -v /var/run/docker.sock:/var/run/docker.sock --privileged --name jenkins -p 8080:8080 -p 50000:50000 -u root myjenkins:latest
