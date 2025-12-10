pipeline {
    agent none
    stages {
        stage('Build') {
            failFast true
            parallel {
                stage('Build Log Watcher') {
                  agent {
                    label 'buildx'
                  }
                  steps {
                    sh "docker compose build log-watcher-test"
                  }
                }
                stage('Build MC') {
                  agent {
                    label 'buildx'
                  }
                  steps {
                    sh "docker compose build mc-test"
                  }
                }
            }
            post {
                regression {
                    emailext attachLog: true, body: "${env.BUILD_URL}", compressLog: true, recipientProviders: [buildUser(), developers()], subject: "${env.JOB_NAME} - Build # ${env.BUILD_NUMBER} - ${currentBuild.currentResult}!"
                }
            }
        }
    }
}
