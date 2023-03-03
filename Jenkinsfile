pipeline {
    agent { docker { image 'registry.virtware.top/alpine-gcc' } }
    options { skipDefaultCheckout(true) }
    post {
        always {
            mail body: 'Test', subject: 'Test Email', to: 'ghislain.bernard@gmail.com'
        }
    }
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
                sh 'gcc -o main main.c'
                sh './main'
            }
        }
    }
}
