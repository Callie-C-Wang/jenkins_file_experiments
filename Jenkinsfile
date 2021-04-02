pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        echo 'Run pytest'
<<<<<<< HEAD
        
=======
        sh '''pytest --alluredir=_output_/account_administration_service/allure-results
allure serve _output_/account_administration_service/allure-results'''
>>>>>>> 937ac5b3237b1789d43b8d12287d31a8c841fc1c
      }
    }

    stage('Report') {
      steps {
        echo 'Generate allure report'
      }
    }

  }
}