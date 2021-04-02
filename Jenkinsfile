pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        echo 'run test'
        sh 'python --version'
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