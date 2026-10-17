pipeline {
    agent any

    stages {
       stage('Build') {
           steps {
                echo 'Hello Bharathi! Build stage started.'
                sh 'pwd'
                sh 'whoami'
                sh 'ls -l'
                sh 'date'
              }
          }          

        stage('Test') {
            steps {
                echo 'Test stage completed successfully.'
            }
        }

        stage('Post') {
            steps {
                echo 'Pipeline completed successfully!'
                echo 'Ready for the next DevOps step.'
            }
        }
    }
    post {
        success {
            echo 'SUCCESS: Pipeline completed successfully!'
        }

        failure {
            echo 'FAILURE: Pipeline failed. Please check the logs.'
        }

        always {
            echo 'INFO: Pipeline execution finished.'
        }
    }
}
