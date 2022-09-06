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
                withDockerRegistry([credentialsId: "docker-hub", url: "https://hub.docker.com/" ]) {
                    sh 'docker push preshtego/jenkinsdockerdemo:""$BUILD_ID'
                }
            }
        }
    }
}