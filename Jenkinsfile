pipeline {
    agent any
    
    environment {
        GIT_CREDENTIALS = credentials('ca389e2d-aa1f-42d5-b1d9-4b59b5c71ab5')
    }
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    git credentialsId: "${GIT_CREDENTIALS}", url: 'https://github.com/newdelthis/dai-1.git'
                }
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    docker.build('my-nginx-image')
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.image('my-nginx-image').run('-d -p 9999:80')
                }
            }
        }
    }
}
