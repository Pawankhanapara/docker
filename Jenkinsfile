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
                steps {
                     git([url: 'https://github.com/Pawankhanapara/docker.git', branch: 'main', credentialsId: 'github'])
                      checkout scm
                }
                }

        
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("mynginx")
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        
            sh 'docker run --name mynginx1 -dp 8081:80 mynginx'
        
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker_id') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
