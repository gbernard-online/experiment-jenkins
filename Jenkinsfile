node {
    stage('one') {
        git branch: 'main', credentialsId: 'jenkins', url: 'git@github.com:gbernard-online/experiment-jenkins.git'
    }
    stage('two') {
        sh 'ls -l'
    }
    stage('three') {
        sh 'pwd'
    }
    stage('four') {
        cleanWs()
    }
}
