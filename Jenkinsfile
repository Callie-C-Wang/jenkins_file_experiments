pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        echo 'Run Test'
        sh 'pytest --alluredir=_output_/account_administration_service/allure-results'
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