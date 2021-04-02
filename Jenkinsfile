pipeline {
  agent {
        docker { image 'pythoncontainer' }
    }
  stages {
  
    stage('Test') {
      steps {
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