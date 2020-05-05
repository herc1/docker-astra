pipeline {
    agent { label 'docker-agent' }
    stages {
        stage('build') {
            steps {
                script {
                    dockerImage = docker.build("${DOCKER_IMAGE_NAME}:${env.BUILD_ID}")
                }
            }
        }
        stage('push') {
            steps {
                script {
                    dockerImage.push()
                    dockerImage.push('latest')
                }
            }
        }
    }
}