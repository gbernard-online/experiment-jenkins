pipeline {
    agent { docker { image 'registry.virtware.top/alpine-gcc' } }
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
        stage('echo') {
            steps {
                sh 'echo ' + env.BRANCH_NAME
            }
        }
        stage('archive') {
            archiveArtifacts artifacts: 'Jenkinsfile'
        }
    }
}
