pipeline {
    agent {
        docker {
            image 'registry.virtware.top/alpine-gcc'
            registryCredentialsId 'registry.virtware.top'
            registryUrl 'https://registry.virtware.top'
        }
    }
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
        skipDefaultCheckout()
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
        stage('notify') {
            steps {
                sh 'echo ' + env.BRANCH_NAME
            }
        }
        stage('archive') {
            steps {
                archiveArtifacts artifacts: 'Jenkinsfile'
            }
        }
    }
}
