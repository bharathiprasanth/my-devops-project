pipeline {
    agent any

    parameters {
        choice(
            name: 'TARGET_ENV',
            choices: ['DEV', 'QA'],
            description: 'Select the environment for this practice build'
        )
    }

    stages {
       stage('Build') {
           steps {
                echo 'Hello Bharathi! Build stage started.'
                echo "Build Number: ${env.BUILD_NUMBER}"
                echo "Workspace: ${env.WORKSPACE}"
                sh 'pwd'
                sh 'whoami'
                sh 'ls -l'
                sh 'date'
              }
          }

        stage('Test') {
            when {
               expression {
                    params.TARGET_ENV == 'QA'
               }
           }
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
