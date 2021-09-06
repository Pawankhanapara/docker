node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'docker_id') {

        def customImage = docker.build("mynginx")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
