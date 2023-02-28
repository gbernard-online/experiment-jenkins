node {
    stage('build') {
        git branch: 'main', credentialsId: 'jenkins', url: 'git@github.com:gbernard-online/experiment-jenkins.git'
    }
    stage('clean') {
        cleanWs()
    }
}
