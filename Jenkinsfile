node
{
   stage('SCM Checkout')
   {
       git branch: 'main', credentialsId: 'git-cred', url: 'https://github.com/Siddharthalhat001/docker-task-1.git'
   }
   stage('Build Docker Image')
   {
       sh "docker build -t pawankhanaparazymr/mynginx . "
   }
   }
