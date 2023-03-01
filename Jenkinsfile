pipeline {
    agent { docker { image 'nginx:1.22.1-alpine' } }
    options { skipDefaultCheckout(true) }
    stages {
        stage('clone') {
            steps {
                checkout scm
            }
        }
        stage('build') {
            steps {
                sh 'cat /etc/nginx/conf.d/default.conf'
            }
        }
        // stage('clean') {
        //     steps {
        //         cleanWs()
        //     }
        // }
    }
}
