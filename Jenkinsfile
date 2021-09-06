node {
     environment {
    registry = "pawankhanaparazymr/mynginx"
    registryCredential = 'docker_id'
    dockerImage = ''
    }
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
         stage('Cloning Git') {
               
                      checkout scm
                
                }

        
    }

    stage('Build image') {
         
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("mynginx")
          
         
    }

}
