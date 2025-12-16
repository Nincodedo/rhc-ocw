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
                    sh "docker compose build --no-cache log-watcher-test"
                  }
                  post {
                    cleanup {
                      sh "docker image rm ghcr.io/nincodedo/rhc-ocw:unstable"
                    }
                  }
                }
                stage('Build MC') {
                  agent {
                    label 'buildx'
                  }
                  steps {
                    sh "docker compose build --no-cache mc-test"
                  }
                  post {
                    cleanup {
                      sh "docker image rm ghcr.io/nincodedo/rhc-ocw-mc:unstable"
                    }
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
