pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        echo 'Run pytest'
      }
    }

    stage('Report') {
      steps {
        echo 'Generate allure report'
      }
    }

  }
}