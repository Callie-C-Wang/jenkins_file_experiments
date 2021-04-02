pipeline {
  agent any
  stages {
  
    stage('Test') {
      steps {
        docker { image 'pythoncontainer' }
        sh 'pip --version'
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