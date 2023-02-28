node {
    stage('build') {
        docker.image('nginx:1.22.1-alpine') { c ->
            sh 'docker ps'
        }
    }
    stage('clean') {
        cleanWs()
    }
}
