pipeline {
  agent none
  stages {
    stage('Build Phase One') {
        agent { docker { image 'python:3.9.1' } }
        steps {
            sh 'python --version'
            sh 'apt-get update && apt-get install -y sudo'
            sh 'sudo apt-get update'
            sh 'sudo apt-get -y install python3-pip'
            sh 'pip3 --version'
            sh 'pip3 install requests'
            sh 'pip3 install -U pytest'
            sh 'pip3 install allure-pytest'
            sh 'pytest --version'
      }
    }

    stage('Build Phase Two') {
      agent { docker { image 'node-14' } }
      steps {
        sh 'npm install -g allure-commandline'
      }
    }

    stage('Test') {
      steps {
        echo 'run test'
        sh 'python -m pytest'
      }
    }

    stage('Gen Report') {
      steps {
        echo 'Generate Report'
      }
    }

    stage('Show Report') {
      steps {
        echo 'Show Report'
      }
    }

  }
}