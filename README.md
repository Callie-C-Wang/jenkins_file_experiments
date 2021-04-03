# jenkins_file_experiments

This is for learning of writing jenkinsfile

## build a docker image for jenkins

docker build -t myjenkins .

## run that image

docker run -t -v /var/run/docker.sock:/var/run/docker.sock -v c:/pos_api_test_report/allure-report:/api_test_report/allure-report --privileged --name jenkins -p 8080:8080 -p 50000:50000 -u root myjenkins:latest

## launch and configure jenkins

go to localhost:8080

copy admin initial password for the first time log in

choose "install recommended plug-ins"

### install plug-ins for jenkins

go to "Manage Jenkins" -> "Manage Plugins"

click "Available" tab page and search "Docker"

choose "Docker" & "Docker Pipeline"

click "Available" tab page and search "Blue Ocean"

choose "Docker" & "Blue Ocean"

click "Install without restart"

then choose "Restart Jenkins when installation is complete and no jobs are running"

## build your first pipeline with jenkins file

after Jenkins restarts

choose "New Item"

enter an item name like "jenkinsfile_example"

choose "Multibranch Pipeline"

when in the configuration page of this jenkins job "jenkinsfile_example", click "Add Source" under "Branch Source" section

you can use any pytest public git project or just put the git link of this project "https://github.com/Callie-C-Wang/jenkins_file_experiments.git"

then click save and wait for this job to build automatically

## check your allure report in your host machine/local machine

run `allure open C:\pos_api_test_report\allure-report`
