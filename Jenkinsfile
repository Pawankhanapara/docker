pipeline {  
    environment {
    registry = "pawankhanaparazymr/mynginx"
    registryCredential = 'docker_id'
    dockerImage = ''
    }
     agent any { dockerfile true }
    stages {
               stage('Cloning Git') {
                steps {
                     git([url: 'https://github.com/Pawankhanapara/docker.git', branch: 'main', credentialsId: 'github'])
                }
                }
            stage('docker image build') {
                steps {
                    sh 'dockerpush.sh'
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
