pipeline {  
    environment {
    registry = "pawankhanaparazymr/mynginx"
    registryCredential = 'docker_id'
    dockerImage = ''
    }
     agent any
    stages {
              stage('Cloning Git') {
                steps {
                     git([url: 'https://github.com/Pawankhanapara/docker.git', branch: 'main', credentialsId: 'github'])
                }
                }
            stage('build') {
                steps {
                    sh 'docker build -t mynginx .'
                    sh 'docker run --name mynginx1 -dp 8081:80 mynginx'
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
