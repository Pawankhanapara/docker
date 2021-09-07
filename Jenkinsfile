pipeline { 
    environment { 
        registry = "pawankhanaparazymr/mynginx" 
        registryCredential = 'docker_id'
        dockerImage = '' 
    }
    agent any 
    stages { 
        stage('Cloning our Git') { 
            steps { 
              git([url: 'https://github.com/Pawankhanapara/docker.git', branch: 'main', credentialsId: 'github'])    }
        } 
        stage('Building our image') { 
            steps { 
                script { 
                    dockerImage = docker.build  "mynginx" 
                }
            } 
        }
    }
}

