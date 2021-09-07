node
{
   environment { 
        registry = "pawankhanaparazymr/mynginx" 
        registryCredential = 'docker_id'
        dockerImage = '' 
    }
   stage('SCM Checkout')
   {
        git([url: 'https://github.com/Pawankhanapara/docker.git', branch: 'main', credentialsId: 'github']) 
   }
   stage('Build Docker Image')
   {
       sh "docker build -t pawankhanaparazymr/mynginx . " , registryCredential
   }
}
