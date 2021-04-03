# jenkins_file_experiments

This is for learning of writing jenkinsfile

## Pre-requirements

You should have already installed Docker desktop

## Docker

### Build a docker image for jenkins in windows powershell as an admin

run `docker build -t myjenkins .`

### Solution for errors

if you've already had a image named "myjenkins", you need to run the following command in advance:

run `docker image rm myjenkins`

### Launch a container based on the image in windows powershell as an admin

run `docker run -t -v /var/run/docker.sock:/var/run/docker.sock -v c:/pos_api_test_report/allure-report:/api_test_report/allure-report --privileged --name jenkins -p 8080:8080 -p 50000:50000 -u root myjenkins:latest`

### Solution for errors

if you've already had a container named "jenkins", you need to run the following 2 commands in advance:

run `docker stop jenkins`

run `docker rm jenkins`

## Jenkins

### Launch and configure jenkins in any web browser

go to localhost:8080

copy admin initial password in the window powershell log for the first time log in

click "install suggested plug-ins"

### Install more plug-ins for jenkins

go to "Manage Jenkins" -> "Manage Plugins"

click "Available" tab page and search "Docker"

choose "Docker" & "Docker Pipeline"

click "Available" tab page and search "Blue Ocean"

choose "Blue Ocean"

click "Install without restart"

then choose "Restart Jenkins when installation is complete and no jobs are running"

### Build your first pipeline with jenkins file

after Jenkins restarts

choose "New Item"

enter an item name like "jenkinsfile_example"

choose "Multibranch Pipeline" then click "OK" button

when in the configuration page of this jenkins job "jenkinsfile_example", click "Add Source" under "Branch Source" section

choose "GitHub" if you have any pytest public git project or just put the git link of this project "https://github.com/Callie-C-Wang/jenkins_file_experiments.git"

then click save and wait for this job to build automatically

the first build should pass

## Allure report

### Check your allure report in your host/local machine in windows command prompt

run `allure open C:\pos_api_test_report\allure-report`
