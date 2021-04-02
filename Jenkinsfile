pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        echo 'Run pytest'
        sh '''pytest --alluredir=_output_/account_administration_service/allure-results
allure serve _output_/account_administration_service/allure-results'''
      }
    }

    stage('Report') {
      steps {
        echo 'Generate allure report'
      }
    }

  }
}