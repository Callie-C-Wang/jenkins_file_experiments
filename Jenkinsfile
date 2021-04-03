pipeline {
  agent { docker { image 'python:3.9.1 -p 33333:33333'} }
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
            sh 'sudo apt install default-jre -y'
            sh 'sudo apt install default-jdk -y'
            sh 'javac -version'
            sh 'curl -o allure-2.13.9.tgz -Ls https://github.com/allure-framework/allure2/releases/download/2.13.9/allure-2.13.9.tgz'
            sh 'sudo tar -zxvf allure-2.13.9.tgz -C /opt/'
            sh 'sudo ln -s /opt/allure-2.13.9/bin/allure /usr/bin/allure'
            sh 'allure --version'
      }
    }

    stage('Test') {
      steps {
        echo 'run test'
        sh 'python -m pytest --alluredir=_output_/allure-results'
      }
    }

    stage('Gen Report') {
      steps {
        echo 'Generate Report'
        // sh 'cp -R _output_/allure-report/history _output_/allure-results/history'
        sh 'allure generate --clean _output_/allure-results -o _output_/allure-report'
        sh 'allure open -p 33333 _output_/allure-report'
        // sh 'ls _output_/allure-report'
        // sh 'ls _output_/allure-report/history'
      }
    }

  }
  post {
        always {
            archiveArtifacts artifacts: '_output_/allure-report/**/*.*', fingerprint: true
        }
    }
}
