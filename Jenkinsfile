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

        app = docker.build("mynginx/docker")
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        
            sh 'docker run --name mynginx1 -dp 8081:80 mynginx'
        
    }
}
