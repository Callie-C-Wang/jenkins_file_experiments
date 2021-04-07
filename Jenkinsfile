pipeline {
  agent {
    docker {
      image 'python:3.9.3'
      args '-p 33333:33333 --name python_container'
    }
  }

  stages {
    stage('Build') {
      steps {
        echo 'Trying to install python, pytest, allure in container ......'
        sh 'python --version'
        sh 'apt-get update && apt-get install -y sudo'
        sh 'sudo apt-get update'
        sh 'sudo apt-get -y install python3-pip'
        sh 'pip3 --version'
        sh 'pip3 install requests'
        sh 'pip3 install -U pytest'
        sh 'pip3 install allure-pytest'
        sh 'pytest --version'
        sh 'sudo apt install default-jre -y'
        sh 'sudo apt install default-jdk -y'
        sh 'javac -version'
        sh 'curl -o allure-2.13.9.tgz -Ls https://github.com/allure-framework/allure2/releases/download/2.13.9/allure-2.13.9.tgz'
        sh 'sudo tar -zxvf allure-2.13.9.tgz -C /opt/'
        sh 'sudo ln -s /opt/allure-2.13.9/bin/allure /usr/bin/allure'
        sh 'allure --version'
      }
    }

    stage('Test') {
      steps {
        echo 'Run tests ......'
        sh 'python -m pytest --alluredir=target/allure-results'
      }
      post {
          always {
            allure includeProperties: false, jdk: '', report: 'target/allure-report', results: [[path: 'target/allure-results']]
          }
      }
    }
  }
}
