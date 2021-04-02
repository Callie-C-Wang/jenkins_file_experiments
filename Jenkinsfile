pipeline {
  agent any
  stages {
    stage('Test') {
     steps {
              container('pythoncontainer') {
                  sh 'python --version'
              }
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