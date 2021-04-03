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
      }
    }

    stage('Test') {
      steps {
        echo 'run test'
        sh 'python -m pytest account_administration_service --alluredir=_output_/account_administration_service/allure-results'
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