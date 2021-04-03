# jenkins_file_experiments
This is for learning of writing jenkinsfile

## build a docker image for jenkins
docker build -t myjenkins .

## run that image
docker run -t -v /var/run/docker.sock:/var/run/docker.sock -v c:/pos_api_test_report/allure-report:/api_test_report/allure-report --privileged --name jenkins -p 8080:8080 -p 50000:50000 -u root myjenkins:latest
