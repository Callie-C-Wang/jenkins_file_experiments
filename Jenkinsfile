pipeline {
  agent { docker { image 'python:3.9.1' } }
  stages {

    stage('Build Phase One') {
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
            sh 'sudo apt-get install software-properties-common ppa:qameta/allure'
            sh 'sudo apt-get update'
            sh 'sudo apt-get install allure'
            sh 'allure --version'
      }
    }

    stage('Test') {
      steps {
        echo 'run test'
        sh 'python -m pytest --alluredir=_output_/allure-results'
      }
    }

    stage('Gen Report') {
      steps {
        echo 'Generate Report'
        sh 'allure generate --clean _output_/allure-results -o _output_/allure-report'
      }
    }

    stage('Show Report') {
      steps {
        echo 'Show Report'
      }
    }

  }
}