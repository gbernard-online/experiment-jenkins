pipeline {
    agent { docker { image 'nginx:1.22.1-alpine' } }
    options { skipDefaultCheckout(true) }
    stages {
        stage('clean') {
            steps {
                cleanWs()
            }
        }
        stage('clone') {
            steps {
                checkout scm
            }
        }
        stage('build') {
            steps {
                sh 'id'
                sh 'pwd'
                sh 'ls -la'
            }
        }
    }
}
