pipeline {
  agent { docker { image 'python:3.9.1' } }
  stages {
    stage('build') {
        steps {
            sh 'python --version'
      }
    }
    
    stage('Test') {
      steps {
        echo 'run test'
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