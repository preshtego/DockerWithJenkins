pipeline {
    agent any 
    stages {
        stage ('Build') {
            steps {
                sh 'printenv'
                sh 'docker build -t preshtego/jenkinsdockerdemo:""$BUILD_ID .'
            }
        }
        stage ('Publish') {
            steps {
                withCredentials([string(credentialsId: 'preshtego', variable: 'passwd')]) {
                    sh 'docker login --username preshtego --password $passwd '
                    
                    sh 'docker push preshtego/jenkinsdockerdemo'
                }
            }
        }
    }
}
