pipeline {
  agent any
  stages {
    stage('Sync Codes') {
      steps {
        echo 'Run git pull'
      }
    }

    stage('Test') {
      steps {
        echo 'Run pytest'
      }
    }

  }
}