pipeline {
  agent { docker { image 'python:3.9.1' } }
  stages {
    stage('build') {
        steps {
            sh 'python --version'
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