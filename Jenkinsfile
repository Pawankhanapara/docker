pipeline {  
    environment {
    registry = "pawankhanaparazymr/mynginx"
    registryCredential = 'docker_id'
    dockerImage = ''
    }
     agent any
    stages {
              stage('checkout') {
                steps {
                    checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Pawankhanapara/docker']]])
                }
                }
            stage('docker image build') {
                steps {
                    sh "docker build -t mynginx Dockerfile"
                    sh "docker run --name mynginx1 -dp 8081:80 mynginx"
               }
            }
            stage('push'){
                steps{
                    sh 'docker login'
                    sh 'docker tag mynginx:latest pawankhanaparazymr/mynginx'
                    sh 'docker push pawankhanaparazymr/mynginx'
                }
            }
            stage('pull'){
                steps{
                    sh 'docker pull pawankhanaparazymr/mynginx'
                    sh 'docker run --name nginxpulled -dp 9090:80 pawankhanaparazymr/mynginx'
               }
           }
        
    }
}
