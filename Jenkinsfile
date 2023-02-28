node {
    stage('build') {
        docker.image('nginx:1.22.1-alpine').withRun('') { c ->
            sh 'docker ps'
            sh 'curl local'
        }
    }
    stage('clean') {
        cleanWs()
    }
}
