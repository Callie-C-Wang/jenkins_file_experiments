pipeline {
  agent any
  stages {
    stage('Build a Docker Container') {
      steps {
        echo 'Create a python container in Docker'
        sh 'docker build -t pythoncontainer .'
      }
    }
    stage('Run a Docker Image') {
      steps {
        echo 'Run the python container in Docker'
        sh 'docker run --rm pythoncontainer'
      }
    }

    stage('Report') {
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